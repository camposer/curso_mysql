SELECT * FROM persona p, autor a WHERE a.id = p.id;
SELECT * FROM persona p INNER JOIN autor a ON a.id = p.id;

-- Esta query está muy mal! Porque nos cargamos el índice
SELECT p.* FROM persona p WHERE p.id IN (SELECT a.id FROM autor a);

SELECT * 
FROM
	persona p,
	(SELECT * FROM autor a) a
WHERE p.id = a.id;
