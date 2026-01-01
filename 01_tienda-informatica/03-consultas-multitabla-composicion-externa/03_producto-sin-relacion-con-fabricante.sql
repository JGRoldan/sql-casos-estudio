-- ¿Pueden existir productos que no estén relacionados con un fabricante? Justifique su respuesta.

-- En el esquema de base de datos proporcionado,
-- la tabla "producto" tiene una restricción de FK (FOREIGN KEY)
-- que obliga a que cada producto esté asociado a un fabricante existente en la tabla "fabricante".
-- Por lo tanto, en este caso particular, no es posible tener productos sin relación con un fabricante.

/*
CREATE TABLE producto (
  id SERIAL PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  precio NUMERIC(10,2) NOT NULL,
  id_fabricante INT NOT NULL,
  CONSTRAINT fk_fabricante
    FOREIGN KEY(id_fabricante)
    REFERENCES fabricante(id)
);
*/