-- Calcula la media del precio de todos los productos del fabricante Asus.

SELECT ROUND(AVG(p.precio), 2) AS media_precio_productos_asus
FROM producto p
INNER JOIN fabricante f ON p.id_fabricante = f.id
WHERE f.nombre = 'Asus';