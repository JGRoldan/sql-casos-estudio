DROP DATABASE IF EXISTS tienda;
CREATE DATABASE tienda;

\c tienda;

CREATE TABLE fabricante (
  id SERIAL PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL
);

CREATE TABLE producto (
  id SERIAL PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  precio NUMERIC(10,2) NOT NULL,
  id_fabricante INT NOT NULL,
  CONSTRAINT fk_fabricante
    FOREIGN KEY(id_fabricante)
    REFERENCES fabricante(id)
);

-- CONSTRAINT: Es una restricción que se aplica a una columna o conjunto de columnas 
-- en una tabla para garantizar la integridad de los datos.

-- FOREIGN KEY: Es una clave foránea que establece una relación entre dos tablas, asegurando
-- que los valores en una columna (o conjunto de columnas) coincidan con los valores en la columna primaria de otra tabla.

-- REFERENCES: Especifica la tabla y columna a la que se hace referencia en una clave foránea.