-- Devuelve una lista con el identificador del producto, nombre del producto, identificador del fabricante y nombre del fabricante, de todos los productos de la base de datos.

SELECT p.id, p.nombre, f.id, f.nombre 
FROM producto p 
INNER JOIN fabricante f ON p.id_fabricante = f.id;