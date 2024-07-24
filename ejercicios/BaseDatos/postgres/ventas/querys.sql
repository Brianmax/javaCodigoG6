SELECT * FROM productos p LEFT JOIN detalles_ordenes d
ON p.id_producto = d.id_producto WHERE d.id_producto IS NULL;

-- group, sum, count

SELECT * FROM clientes;

SELECT nombre, COUNT(*) AS total FROM clientes GROUP BY nombre
ORDER BY total DESC;


SELECT COUNT(*) FROM clientes;

SELECT * FROM detalles_ordenes;

SELECT SUM(cantidad) FROM detalles_ordenes;


SELECT id_producto, SUM(cantidad) as total_productos FROM detalles_ordenes
GROUP BY id_producto ORDER BY total_productos DESC;



SELECT p.nombre_producto, SUM(d.cantidad) AS total FROM detalles_ordenes d JOIN productos p
ON d.id_producto = p.id_producto GROUP BY nombre_producto ORDER BY total DESC;

-- cantidad de productos vendidos por cada cliente

SELECT c.id_cliente, c.nombre, SUM(d.cantidad) FROM clientes c JOIN ordenes o
ON c.id_cliente=o.id_cliente JOIN detalles_ordenes d
ON d.id_orden = o.id_orden GROUP BY c.id_cliente;