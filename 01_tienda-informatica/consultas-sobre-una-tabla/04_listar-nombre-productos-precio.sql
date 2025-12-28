-- Lista el nombre de los productos, el precio en euros y el precio en dólares estadounidenses (USD).

-- Contexto: 
/*
1- Precio en pesos argentinos (ARS)
2- Tasa de canbio: 1 USD = 350 ARS
3- Precio en euros (EUR): 1 EUR = 1.1 USD

Sabiendo que en Postgres se puede realizar funciones matemáticas básicas dentro de una consulta SQL,
se puede calcular el precio en USD y EUR a partir del precio en ARS.
*/


SELECT 
    nombre,
    precio,
    ROUND(precio / 350, 2) AS precio_usd,
    ROUND((precio / 350) / 1.1, 2) AS precio_eur
FROM 
    producto;


-- Explicación:
-- 1. Seleccionamos las columnas "nombre" y "precio" directamente de la tabla "producto".
-- 2. Calculamos el precio en USD dividiendo el precio en ARS por 350 (tasa de cambio) y redondeamos el resultado a 2 decimales.
-- 3. Calculamos el precio en EUR dividiendo el precio en USD por 1.1 (tasa de cambio) y redondeamos el resultado a 2 decimales.
-- 4. La función ROUND() se utiliza para redondear los valores calculados a dos decimales para una mejor presentación.

-- Tambien podemos crear una función aparte para hacer la conversión de moneda, pero en este caso es más sencillo hacerlo directamente en la consulta.

CREATE OR REPLACE FUNCTION convertir_a_usd(precio_ars NUMERIC)
RETURNS NUMERIC AS $$
BEGIN
    RETURN ROUND(precio_ars / 350, 2);
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION convertir_a_eur(precio_ars NUMERIC)
RETURNS NUMERIC AS $$
BEGIN
    RETURN ROUND((precio_ars / 350) / 1.1, 2);
END;
$$ LANGUAGE plpgsql;

SELECT 
    nombre,
    precio,
    convertir_a_usd(precio) AS precio_usd,
    convertir_a_eur(precio) AS precio_eur
FROM 
    producto;