-- Muestra el precio máximo, precio mínimo y precio medio de los productos de cada uno de los fabricantes.

SELECT f.nombre AS fabricante,
       MAX(p.precio) AS precio_maximo,
       MIN(p.precio) AS precio_minimo,
       AVG(p.precio) AS precio_medio
FROM fabricante f
JOIN producto p ON f.id = p.id_fabricante
GROUP BY f.id, f.nombre
ORDER BY f.nombre;