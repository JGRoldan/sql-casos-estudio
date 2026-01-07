-- Muestra el precio máximo, precio mínimo, precio medio y el número total de productos que tiene el fabricante Crucial.

SELECT 
    MAX(precio) AS precio_maximo,
    MIN(precio) AS precio_minimo,
    AVG(precio) AS precio_medio,
    COUNT(*) AS total_productos
FROM producto p
INNER JOIN fabricante f ON p.id_fabricante = f.id
WHERE f.nombre = 'Crucial';