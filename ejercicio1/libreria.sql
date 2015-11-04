-- Database: library

CREATE TABLE persona(
	id INTEGER AUTO_INCREMENT NOT NULL,
	dni VARCHAR(10) NOT NULL,
	nombre VARCHAR(20) NOT NULL,
	apellido VARCHAR(20) NOT NULL,
	fecha_nacimiento DATE,
	direccion VARCHAR(255),
	PRIMARY KEY(id),
	UNIQUE KEY uq_dni (dni)
);

CREATE INDEX idx_dni ON persona (dni);
CREATE INDEX idx_apellido ON persona (apellido);

CREATE TABLE autor(
	id INTEGER NOT NULL,
	nombre VARCHAR(20) NOT NULL,
	PRIMARY KEY (id),
	CONSTRAINT fk_autor_persona FOREIGN KEY (id) REFERENCES persona(id)
);

CREATE TABLE libreria(
	id INTEGER AUTO_INCREMENT NOT NULL,
	cif VARCHAR(10) NOT NULL,
	razon_social VARCHAR(40) NOT NULL,
	direccion VARCHAR(400),
	PRIMARY KEY (id),
	UNIQUE KEY uq_libreria_cif (cif)
);

CREATE INDEX idx_cif ON libreria (cif);


CREATE TABLE libro(
	id INTEGER AUTO_INCREMENT NOT NULL,
	isbn VARCHAR(15) NOT NULL,
	titulo VARCHAR(40) NOT NULL,
	autor_id INTEGER NOT NULL,
	precio NUMERIC NOT NULL,
	PRIMARY KEY (id),
	CONSTRAINT fk_libro_autor FOREIGN KEY (autor_id) REFERENCES autor(id)	
);

CREATE TABLE oferta(
	libreria_id INTEGER NOT NULL,
	libro_id INTEGER NOT NULL,
	precio NUMERIC NOT NULL,
	disponibilidad INT NOT NULL,
	PRIMARY KEY (libreria_id, libro_id),
	CONSTRAINT fk_oferta_libreria FOREIGN KEY (libreria_id) REFERENCES libreria(id),
	CONSTRAINT fk_oferta_libro FOREIGN KEY (libro_id) REFERENCES libro(id)
);

CREATE TABLE compra(
	id INTEGER AUTO_INCREMENT NOT NULL,
	libro_id INTEGER NOT NULL,
	persona_id INTEGER NOT NULL,
	libreria_id INTEGER NOT NULL,
	montante NUMERIC NOT NULL,
	fecha DATE NOT NULL,
	PRIMARY KEY (id),
	CONSTRAINT fk_compra_libro FOREIGN KEY (libro_id) REFERENCES libro(id),	
	CONSTRAINT fk_compra_persona FOREIGN KEY (persona_id) REFERENCES persona(id),
	CONSTRAINT fk_compra_libreria FOREIGN KEY (libreria_id) REFERENCES libreria(id)
);
