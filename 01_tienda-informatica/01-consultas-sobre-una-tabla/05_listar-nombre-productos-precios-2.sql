-- Lista el nombre de los productos, el precio en euros y el precio en dólares estadounidenses (USD). 
-- Utiliza los siguientes alias para las columnas: nombre de producto, euros, dólares.

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
    nombre AS nombre_producto,
    convertir_a_usd(precio) AS dolares,
    convertir_a_eur(precio) AS euros
FROM 
    producto;