-- on delete set null
CREATE TABLE profesores (
	id_profesor SERIAL PRIMARY KEY,
	nombre VARCHAR(50),
	apellido VARCHAR(50)
);

CREATE TABLE cursos (
	id_curso SERIAL PRIMARY KEY,
	nombre VARCHAR(50),
	descripcion VARCHAR(100),

	id_profesor INTEGER,
	FOREIGN KEY (id_profesor) 
		REFERENCES profesores(id_profesor)
		ON DELETE SET NULL
);

INSERT INTO profesores(nombre, apellido) VALUES('Jorge', 'Ramirez');
INSERT INTO profesores(nombre, apellido) VALUES('Ana', 'Garcia');

SELECT * FROM profesores;

INSERT INTO cursos(nombre, descripcion, id_profesor) 
	VALUES('Programacion', 'introduccion a los conceptos', 2);

INSERT INTO cursos(nombre, descripcion, id_profesor)
	VALUES('Computacion Grafica', 'algoritmos de renderizacion', 1);

SELECT * FROM cursos;

DELETE FROM profesores WHERE id_profesor = 1;

UPDATE cursos SET id_profesor = 2 WHERE nombre = 'Computacion Grafica';


-- on delete no action

CREATE TABLE departamentos (
	id_departamento SERIAL PRIMARY KEY, 
	nombre VARCHAR(100),
	ubicacion VARCHAR(100)
);

CREATE TABLE empleados (
	id_empleado SERIAL PRIMARY KEY,
	nombre VARCHAR(100),
	puesto VARCHAR(100),

	id_departamento INTEGER,
	FOREIGN KEY(id_departamento) 
		REFERENCES departamentos(id_departamento)
		ON DELETE NO ACTION
);

INSERT INTO departamentos(nombre, ubicacion) 
	VALUES	('Recursos Humanos', 'Edificio A'),
		  	('Investigacion', 'Edificio B'),
			('Ingenieria', 'Edificio M');

SELECT * FROM departamentos;

INSERT INTO empleados(nombre, puesto, id_departamento)
VALUES  ('Pedro', 'Investigador Jefe', 2),
		('Ana', 'Investigadora Pasante', 2),
		('Jorge', 'Jefe Recursos Humanos', 1),
		('Fiorela', 'Supervisora', 3),
		('Paolo', 'Supervisor', 3);


SELECT * FROM empleados;

-- DELETE FROM departamentos WHERE nombre = 'Ingenieria'; // error

DELETE FROM empleados WHERE id_departamento = 3;

DELETE FROM departamentos WHERE nombre = 'Ingenieria';


CREATE TABLE clientes (
	id_cliente SERIAL PRIMARY KEY,
	nombre VARCHAR(100),
	apellido VARCHAR(100),
	email VARCHAR(100)
);

CREATE TABLE pedidos2(
	id_pedido SERIAL PRIMARY KEY,
	cantidad INTEGER,
	fecha_pedido DATE,
	fecha_entrega DATE,

	id_cliente INTEGER,
	FOREIGN KEY(id_cliente) 
		REFERENCES clientes(id_cliente)
		ON DELETE CASCADE
);

INSERT INTO clientes(nombre, apellido, email)
VALUES  ('Jorge', 'Cuadros', 'jcuadros@gmail.com'),
		('Marcos', 'Ramirez', 'mramirez@gmail.com')

SELECT * FROM clientes;
	
INSERT INTO pedidos2(cantidad, fecha_pedido, fecha_entrega, id_cliente)
VALUES  (3,'2024-07-20', '2024-07-24', 1),
		(4,'2024-07-1', '2024-07-14', 1),
		(1,'2024-07-20', '2024-07-26', 2)

SELECT * FROM pedidos2;


DELETE FROM clientes WHERE id_cliente = 1;
