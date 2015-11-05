SELECT p.*
FROM persona p
LEFT JOIN autor a ON a.id = p.id
WHERE a.id IS NULL;

SELECT p.*
FROM autor a
RIGHT JOIN persona p ON a.id = p.id
WHERE a.id IS NULL;
