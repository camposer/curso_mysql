SELECT
	p.*, a.*, COUNT(p.id) numero_compras
FROM compra c
INNER JOIN libro l ON l.id = c.libro_id
INNER JOIN autor a ON a.id = l.autor_id
INNER JOIN persona p ON p.id = a.id
GROUP BY p.id
ORDER BY numero_compras DESC
LIMIT 1;

SELECT
        p.*, a.*, COUNT(p.id) numero_compras
FROM compra c, libro l, autor a, persona p
WHERE l.id = c.libro_id AND a.id = l.autor_id AND p.id = a.id
GROUP BY p.id
ORDER BY numero_compras DESC
LIMIT 1;
