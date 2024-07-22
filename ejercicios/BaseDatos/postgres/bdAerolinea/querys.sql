SELECT * FROM aerolineas;

SELECT capacidad, modelo FROM aviones;

SELECT capacidad, modelo FROM aviones
	WHERE modelo='Ghost';

SELECT capacidad, modelo FROM aviones
	WHERE capacidad >= 200;

SELECT capacidad, modelo FROM aviones
	WHERE capacidad >= 20 AND capacidad <= 100;




DELETE FROM aviones WHERE capacidad <= 10;

SELECT * FROM boletos;


DELETE FROM boletos WHERE asiento <= 20;


-- COUNT

SELECT COUNT(*) FROM aviones;


SELECT * FROM aviones;


-- joins

SELECT a.nombre, av.modelo, av.capacidad FROM aerolineas a JOIN aviones av 
	ON a.id_aerolinea = av.id_aerolinea_fk;
-- join de la tabla pasajero con boletos

SELECT p.nombre, p.apellido, b.asiento, v.origen, v.destino FROM pasajeros p JOIN boletos b
	ON p.id_pasajero = b.id_pasajero_fk JOIN vuelos v 
	ON id_vuelo_fk = v.id_vuelo;


-- join de tablas aerolineas, aviones, vuelos.


SELECT * FROM aerolineas a JOIN aviones av 
	ON a.id_aerolinea = av.id_aerolinea_fk JOIN vuelos v
	ON id_avion = id_avion_fk;

-- insertamos aerolineas

INSERT INTO aerolineas (nombre) VALUES('Latam'),
								('Sky'),
								('Jet Smart');



SELECT * FROM aerolineas a LEFT JOIN aviones av 
	ON a.id_aerolinea = av.id_aerolinea_fk;

-- aerolineas que no tienen ningun avion

SELECT * FROM aerolineas a LEFT JOIN aviones av 
	ON a.id_aerolinea = av.id_aerolinea_fk WHERE id_aerolinea_fk IS NULL;


-- ver si hay aviones sin un vulo asignado
-- traer los aviones que no tengan vuelos

SELECT * FROM aviones a LEFT JOIN vuelos v
	ON a.id_avion = v.id_avion_fk WHERE id_vuelo IS NULL;
