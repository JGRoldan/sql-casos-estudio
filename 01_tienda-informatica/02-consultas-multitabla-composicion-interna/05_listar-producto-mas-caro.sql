-- Devuelve el nombre del producto, su precio y el nombre de su fabricante, del producto más caro.

SELECT p.nombre, p.precio, f.nombre 
FROM producto p
INNER JOIN fabricante f ON p.id_fabricante = f.id
ORDER BY p.precio DESC
LIMIT 1;