-- Lista todos los productos donde el identificador de fabricante sea 1, 3 o 5. Utilizando el operador IN.

SELECT
    *
FROM
    producto
WHERE
    precio > 200
WHERE
    id_fabricante
IN (1, 3, 5);
