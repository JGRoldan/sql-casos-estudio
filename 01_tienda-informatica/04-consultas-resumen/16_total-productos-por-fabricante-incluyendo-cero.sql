-- Muestra el número total de productos que tiene cada uno de los fabricantes.  
-- El listado también debe incluir los fabricantes que no tienen ningún producto.  
-- Ordene el resultado descendentemente por el número de productos.

SELECT f.nombre AS fabricante,
       COUNT(p.id) AS total_productos
FROM fabricante f
LEFT JOIN producto p ON f.id = p.id_fabricante
GROUP BY f.id, f.nombre
ORDER BY total_productos DESC;
