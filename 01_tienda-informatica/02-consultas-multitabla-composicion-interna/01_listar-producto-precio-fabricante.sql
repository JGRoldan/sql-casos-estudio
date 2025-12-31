-- Devuelve una lista con el nombre del producto, precio y nombre de fabricante de todos los productos de la base de datos.

SELECT p.nombre, p.precio, f.nombre 
FROM producto p 
INNER JOIN fabricante f ON p.id_fabricante = f.id;