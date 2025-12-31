-- Devuelve un listado con todos los productos de los fabricantes Asus, Hewlett-Packard y Seagate.  
-- Utilizando el operador IN.

SELECT *
FROM producto p
INNER JOIN fabricante f ON p.id_fabricante = f.id
WHERE f.nombre IN ('Asus', 'Hewlett-Packard', 'Seagate');