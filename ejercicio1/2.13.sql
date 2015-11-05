SELECT 
	libreria.id libreria_id,
	libreria.razon_social libreria_razon_social, 
	libro.id libro_id, 
	libro.titulo libro_titulo
FROM compra c 
RIGHT JOIN (SELECT libro.id libro_id, libreria.id libreria_id 
	FROM libro, libreria) x ON x.libreria_id = c.libreria_id AND x.libro_id = c.libro_id
INNER JOIN libreria ON libreria.id = x.libreria_id
INNER JOIN libro ON libro.id = x.libro_id
WHERE c.libreria_id IS NULL;
