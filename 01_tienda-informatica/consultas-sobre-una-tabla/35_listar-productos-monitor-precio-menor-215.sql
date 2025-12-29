-- Devuelve una lista con el nombre de todos los productos que contienen la cadena Monitor en el nombre y tienen un precio inferior a 215 €.
SELECT
    nombre
FROM
    producto
WHERE
    nombre
LIKE
    '%Monitor%'
AND
    precio < 215;