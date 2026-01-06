-- Calcula la suma de los precios de todos los productos del fabricante Asus.

SELECT SUM(p.precio) AS suma_precios_productos_asus
FROM producto p
INNER JOIN fabricante f ON p.id_fabricante = f.id
WHERE f.nombre = 'Asus';