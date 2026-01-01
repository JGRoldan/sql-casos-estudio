-- Devuelve un listado de todos los fabricantes que existen en la base de datos, junto con los productos que tiene cada uno de ellos. El listado deberá mostrar también aquellos fabricantes que no tienen productos asociados.

SELECT
    f.id AS fab_id,
    f.nombre AS fab_nombre,
    p.id AS prod_id,
    p.nombre AS prod_nombre
FROM
    fabricante f
LEFT JOIN
    producto p ON f.id = p.id_fabricante;