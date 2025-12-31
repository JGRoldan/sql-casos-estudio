-- Devuelve una lista de todos los productos del fabricante Lenovo.

SELECT p.nombre
FROM producto p
INNER JOIN fabricante f ON p.id_fabricante = f.id
WHERE f.nombre = 'Lenovo';