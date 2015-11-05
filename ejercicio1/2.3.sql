/*
 * Esto también es un comentario
 * de varias líneas y el asterisco
no es necesario, es sólo para dar formato...
 */
-- CREATE INDEX idx_persona_id ON compra(persona_id);

SELECT DISTINCT p.* 
FROM compra c, persona p 
WHERE c.persona_id = p.id AND YEAR(p.fecha_nacimiento) >= 1960;

SELECT DISTINCT p.* 
FROM compra c 
INNER JOIN persona p ON c.persona_id = p.id
WHERE YEAR(p.fecha_nacimiento) >= 1960;

SELECT 
	CONCAT(p.nombre, ' ', p.apellido), 
	YEAR(c.fecha) anio_fecha, 
	COUNT(c.persona_id) numero_compras, 
	SUM(c.montante) dinero_gastado 
FROM compra c
INNER JOIN persona p ON p.id = c.persona_id
GROUP BY c.persona_id, anio_fecha;

SELECT 
        CONCAT(p.nombre, ' ', p.apellido),
        YEAR(c.fecha) anio_fecha, 
        COUNT(c.persona_id) numero_compras, 
        SUM(c.montante) dinero_gastado 
FROM compra c, persona p
WHERE p.id = c.persona_id
GROUP BY c.persona_id, anio_fecha;


-- El rendimiento de esta query es muy malo (chapuza!!!)
SELECT 
	CONCAT(p.nombre, ' ', p.apellido) nombre_completo,
	x.anio_fecha,
	x.numero_compras,
	x.dinero_gastado
FROM 
	persona p,
	(SELECT 
		persona_id,
        	YEAR(fecha) anio_fecha, 
	        COUNT(persona_id) numero_compras, 
        	SUM(montante) dinero_gastado 
	FROM compra
	GROUP BY persona_id, anio_fecha) x 
WHERE p.id = x.persona_id;
