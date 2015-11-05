-- CREATE INDEX idx_libro ON compra(libro_id);
-- CREATE INDEX idx_libreria ON compra(libreria_id);
-- CREATE INDEX idx_persona ON compra(persona_id);

SELECT 
	l.*, 
	COUNT(c.libro_id) numero_compras 
FROM compra c
INNER JOIN libro l ON l.id = c.libro_id
GROUP BY c.libro_id 
ORDER BY numero_compras DESC 
LIMIT 1;

