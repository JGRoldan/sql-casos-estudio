-- Lista los nombres de los fabricantes cuyo nombre sea de 4 caracteres.
SELECT
    nombre
FROM 
    fabricante
WHERE
    LENGTH(nombre) = 4;