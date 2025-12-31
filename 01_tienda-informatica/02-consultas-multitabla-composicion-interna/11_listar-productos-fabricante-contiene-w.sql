-- Devuelve un listado con el nombre y el precio de todos los productos cuyo nombre de fabricante contenga el carácter w en su nombre.

SELECT p.nombre, p.precio, f.nombre
FROM producto p
INNER JOIN fabricante f ON p.id_fabricante = f.id
WHERE f.nombre LIKE '%w%';