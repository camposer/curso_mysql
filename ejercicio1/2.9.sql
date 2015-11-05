SELECT 
	YEAR(c.fecha) anio,
	l.cif,
	l.razon_social,
	SUM(c.montante) ventas
FROM compra c
INNER JOIN libreria l ON l.id = c.libreria_id
GROUP BY c.libreria_id, anio
HAVING anio >= 2012;
