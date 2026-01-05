-- Lista el nombre y el precio del producto más caro.

SELECT nombre, precio
FROM productos
ORDER BY precio DESC
LIMIT 1;