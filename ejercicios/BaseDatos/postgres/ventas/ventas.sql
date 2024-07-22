-- Active: 1721446691766@@127.0.0.1@5432@ventas
CREATE TABLE clientes (
    id_cliente SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    email VARCHAR(100)
);
CREATE TABLE productos (
    id_producto SERIAL PRIMARY KEY,
    nombre_producto VARCHAR(100),
    precio DECIMAL(10, 2)
);
CREATE TABLE ordenes (
    id_orden SERIAL PRIMARY KEY,
    id_cliente INT,
    fecha DATE,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);
CREATE TABLE detalles_ordenes (
    id_detalle SERIAL PRIMARY KEY,
    id_orden INT,
    id_producto INT,
    cantidad INT,
    FOREIGN KEY (id_orden) REFERENCES ordenes(id_orden),
    FOREIGN KEY (id_producto) REFERENCES productos(id_producto)
);
