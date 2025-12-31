-- Devuelve un listado con el nombre y el precio de todos los productos de los fabricantes cuyo nombre termine por la vocal e.

SELECT p.nombre, p.precio, f.nombre
FROM producto p
INNER JOIN fabricante f ON p.id_fabricante = f.id
WHERE f.nombre LIKE '%e';