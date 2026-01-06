-- Calcula el número de productos que tiene el fabricante Asus.

SELECT COUNT(*) AS numero_productos_asus
FROM producto p
INNER JOIN fabricante f ON p.id_fabricante = f.id
WHERE f.nombre = 'Asus';