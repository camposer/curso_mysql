SELECT 
	id, 
	CONCAT(nombre, ' ', apellido) AS nombre_completo, 
	YEAR(fecha_nacimiento) AS anio, 
	MONTHNAME(fecha_nacimiento) AS mes, 
	DAY(fecha_nacimiento) AS dia, 
	DATE_FORMAT(fecha_nacimiento, '%d-%m-%Y') AS fecha_latin,
FROM persona;

INSERT INTO persona(nombre, apellido, dni, fecha_nacimiento, direccion) 
VALUES('nombre', 'apellido', 'dni', STR_TO_DATE('23-12-2012', '%d-%m-%Y'), 'dirección');
