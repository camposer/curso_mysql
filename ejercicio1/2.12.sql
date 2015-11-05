SELECT l.*
FROM oferta o
RIGHT JOIN libro l ON o.libro_id = l.id
WHERE o.libro_id IS NULL;
