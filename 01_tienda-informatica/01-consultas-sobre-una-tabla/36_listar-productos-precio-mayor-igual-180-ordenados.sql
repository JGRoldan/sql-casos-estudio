-- Lista el nombre y el precio de todos los productos que tengan un precio mayor o igual a 180€. Ordene el resultado en primer lugar por el precio (en orden descendente) y en segundo lugar por el nombre (en orden ascendente).

SELECT nombre, precio 
FROM producto
WHERE precio >= 180
ORDER BY 
    precio DESC,
    nombre ASC;