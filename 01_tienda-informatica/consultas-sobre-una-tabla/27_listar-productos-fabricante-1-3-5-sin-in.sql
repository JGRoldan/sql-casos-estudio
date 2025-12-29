-- Lista todos los productos donde el identificador de fabricante sea 1, 3 o 5. Sin utilizar el operador IN.
SELECT
    *
FROM
    producto
WHERE
    id_fabricante = 1 OR id_fabricante = 3 OR id_fabricante = 5;
