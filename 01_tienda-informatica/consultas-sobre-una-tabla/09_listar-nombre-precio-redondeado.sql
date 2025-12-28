-- Lista los nombres y los precios de todos los productos de la tabla producto, redondeando el valor del precio.

SELECT 
    nombre, 
    precio,
    ROUND(precio) as round_precio 
FROM producto;