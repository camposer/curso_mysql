SELECT 
	p.dni,
	CONCAT(p.nombre, ' ', p.apellido) nombre_completo,
	COUNT(p.id) numero_libros,
	SUM(c.montante) dinero_gastado
FROM compra c
INNER JOIN persona p ON p.id = c.persona_id
GROUP BY c.persona_id;
