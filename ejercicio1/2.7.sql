SELECT
        l.id,
        YEAR(c.fecha) anio,
        COUNT(c.libro_id) numero_compras
FROM compra c
INNER JOIN libro l ON l.id = c.libro_id
GROUP BY c.libro_id, anio
HAVING anio >= 2013
ORDER BY numero_compras DESC;

SELECT * FROM (SELECT 
	l.id, 
	YEAR(c.fecha) anio,
	COUNT(c.libro_id) numero_compras 
FROM compra c
INNER JOIN libro l ON l.id = c.libro_id
GROUP BY c.libro_id, anio
ORDER BY numero_compras DESC) x WHERE x.anio >= 2013;
