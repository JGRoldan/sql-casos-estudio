-- Calcula el precio más barato de todos los productos del fabricante Asus.

SELECT MIN(p.precio) AS precio_minimo_productos_asus
FROM producto p
INNER JOIN fabricante f ON p.id_fabricante = f.id
WHERE f.nombre = 'Asus';