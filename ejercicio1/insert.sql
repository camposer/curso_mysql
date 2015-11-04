INSERT INTO persona(dni, nombre, apellido, fecha_nacimiento, direccion)
VALUES('1234567Z', 'Gabriel', 'García', 19600101, 'Dirección');
INSERT INTO persona
VALUES(2, '8910111Y', 'Pablo', 'Neruda', '1960-01-01', 'Dirección');
INSERT INTO persona(id, dni, nombre, apellido, fecha_nacimiento, direccion)
VALUES(3, '2131415W', 'Juan', 'Pérez', '1960/01/01', 'Dirección');
INSERT INTO persona(id, dni, nombre, apellido, fecha_nacimiento, direccion)
VALUES(4, '1617181V', 'María', 'González', '1960/01/01', 'Dirección');

INSERT INTO autor(id, nombre) VALUES
(1, 'El Gabo'),
(2, 'Pablito'); 

INSERT INTO libreria(cif, razon_social, direccion)
VALUES('CIF123', 'Librería #1', 'Dirección');
INSERT INTO libreria
VALUES(2, 'CIF456', 'Librería #2', 'Dirección');
INSERT INTO libreria(cif, razon_social, direccion)
VALUES('CIF877', 'Librería #3', 'Dirección');

INSERT INTO libro(id, titulo, isbn, autor_id, precio)
VALUES(1, 'Cien años de soledad', '1234', 1, 200);
INSERT INTO libro(id, titulo, isbn, autor_id, precio)
VALUES(2, 'El Coronel no tiene quien les escriba', '5678', 1, 150);
INSERT INTO libro(id, titulo, isbn, autor_id, precio)
VALUES(3, 'Poemario', '9101', 2, 300);

INSERT INTO oferta VALUES(1, 1, 250, 100), (1, 2, 200, 50), (2, 2, 300, 60), (2, 3, 200, 200); 

INSERT INTO compra (libro_id, persona_id, libreria_id, montante, fecha)
VALUES(1, 1, 1, 200, '2012-01-01');
INSERT INTO compra (libro_id, persona_id, libreria_id, montante, fecha)
VALUES(2, 1, 1, 160, '2012-01-01');
INSERT INTO compra (libro_id, persona_id, libreria_id, montante, fecha)
VALUES(2, 2, 2, 200, '2012-06-01');
INSERT INTO compra (libro_id, persona_id, libreria_id, montante, fecha)
VALUES(2, 3, 3, 400, '2012-08-01');
INSERT INTO compra (libro_id, persona_id, libreria_id, montante, fecha)
VALUES(2, 3, 3, 400, '2013-08-01');
