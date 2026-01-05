-- Lista el nombre y el precio del producto más barato.

SELECT nombre, precio
FROM productos
ORDER BY precio ASC
LIMIT 1;