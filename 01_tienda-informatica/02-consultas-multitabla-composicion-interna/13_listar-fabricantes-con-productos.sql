-- Devuelve un listado con el identificador y el nombre de fabricante, solamente de aquellos fabricantes que tienen productos asociados en la base de datos.

SELECT f.id, f.nombre
FROM fabricante f
WHERE EXISTS (
    SELECT *
    FROM producto p
    WHERE p.id_fabricante = f.id
);