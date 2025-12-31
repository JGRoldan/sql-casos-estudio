-- Devuelve una lista con 2 filas a partir de la cuarta fila de la tabla fabricante. La cuarta fila también se debe incluir en la respuesta.

SELECT *
FROM fabricante
LIMIT 2 
OFFSET 3; -- Conteo empieza en 0, por lo que OFFSET 3 corresponde a la cuarta fila