-- Devuelve un listado donde sólo aparezcan aquellos fabricantes que no tienen ningún producto asociado.

SELECT f.nombre AS fab_nombre
FROM fabricante f
LEFT JOIN producto p ON f.id = p.id_fabricante  
WHERE p.id IS NULL;