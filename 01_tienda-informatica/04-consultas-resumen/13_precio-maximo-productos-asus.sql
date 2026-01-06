-- Calcula el precio más caro de todos los productos del fabricante Asus.

SELECT MAX(p.precio) AS precio_maximo_productos_asus
FROM producto p
INNER JOIN fabricante f ON p.id_fabricante = f.id
WHERE f.nombre = 'Asus';