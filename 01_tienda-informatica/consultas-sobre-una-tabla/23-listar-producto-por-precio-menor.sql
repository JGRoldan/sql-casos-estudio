-- Lista el nombre de los productos que no tienen un precio mayor o igual a 400€.
SELECT
    nombre
FROM
    producto
WHERE
    precio < 400;