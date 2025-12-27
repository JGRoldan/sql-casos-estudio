# Diagrama ER

![Diagrama ER](../images/tienda-informatica.png)

## Comandos básicos Docker

1. Conexión al contenedor
```py
docker exec -it <container-name> psql -U <user-name>
```

> [!NOTE]
> No te pide password porque estás dentro del contenedor y usa auth local


## Comandos básicos consola ddbb

```sql
\l          -- listar bases de datos
\c tienda   -- conectarte a tienda
\dt         -- listar tablas
\d producto -- describir tabla
\! clear    -- limpiar consola
\! cls      -- limpiar consola
```