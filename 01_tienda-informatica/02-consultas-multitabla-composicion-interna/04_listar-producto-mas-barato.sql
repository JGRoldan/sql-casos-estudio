-- Devuelve el nombre del producto, su precio y el nombre de su fabricante, del producto más barato.

SELECT p.nombre, p.precio, f.nombre 
FROM producto p
INNER JOIN fabricante f ON p.id_fabricante = f.id
ORDER BY p.precio ASC
LIMIT 1;

-- Otra forma de hacerlo usando una subconsulta:--
-- SELECT p.nombre, p.precio, f.nombre 
-- FROM producto p
-- INNER JOIN fabricante f ON p.id_fabricante = f.id
-- WHERE p.precio = (SELECT MIN(precio) FROM producto);