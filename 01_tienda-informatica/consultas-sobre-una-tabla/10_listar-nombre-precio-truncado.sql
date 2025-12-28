-- Lista los nombres y los precios de todos los productos de la tabla producto, truncando el valor del precio para mostrarlo sin ninguna cifra decimal.

SELECT 
    nombre, 
    precio,
    TRUNC(precio) as trunc_precio 
FROM producto;