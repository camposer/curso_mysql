SELECT
	CONCAT(p.nombre, ' ', p.apellido) nombre_completo,
	a.*
FROM autor a 
LEFT JOIN libro l ON l.autor_id = a.id
INNER JOIN persona p ON p.id = a.id
WHERE l.id IS NULL;

SELECT 
       CONCAT(p.nombre, ' ', p.apellido) nombre_completo
FROM persona p
WHERE p.id IN (SELECT a.id 
		FROM autor a 
		LEFT JOIN libro l ON l.autor_id = a.id 
		WHERE l.id IS NULL);
