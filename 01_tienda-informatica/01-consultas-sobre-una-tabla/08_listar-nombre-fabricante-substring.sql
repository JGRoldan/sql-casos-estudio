-- Lista el nombre de todos los fabricantes en una columna, y en otra columna obtenga en mayúsculas los dos primeros caracteres del nombre del fabricante.

SELECT 
    nombre,
    UPPER(SUBSTRING(nombre, 1, 2)) AS primeros_dos_caracteres
FROM
    fabricante;