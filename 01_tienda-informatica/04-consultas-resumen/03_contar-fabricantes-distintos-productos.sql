--Calcula el número de valores distintos de identificador de fabricante que aparecen en la tabla productos.

SELECT COUNT(DISTINCT id_fabricante) AS numero_fabricantes_distintos
FROM producto;