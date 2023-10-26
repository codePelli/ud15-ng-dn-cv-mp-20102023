drop database if exists ejercicio13;
create database if not exists ejercicio13;
use ejercicio13;

create table if not exists Empleado (
    dni int primary key,
    nombre nvarchar(255),
	apellido nvarchar(255),
	num_ss int,
    tel_fijo int,
    tel_movil int
    
);

create table if not exists Cocinero (
    fk_dni int primary key,
    anos_empresa date,
    
    foreign key (fk_dni) references Empleado(dni)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

create table if not exists Pinche (
    fk_dni int primary key,
    fecha_nacimiento date,
    fk_dni_cocinero int,
    
    foreign key (fk_dni) references Empleado(dni)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
	foreign key (fk_dni) references Cocinero(fk_dni)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

create table if not exists Plato (
    id_plato int primary key,
    nombre nvarchar(255),
	precio double,
    tipo_plato int
);

create table if not exists Cocina (
    fk_dni int primary key,    
	fk_id_plato int,
    
	foreign key (fk_dni) references Cocinero(fk_dni)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
	foreign key (fk_id_plato) references Plato(id_plato)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

create table if not exists Ingrediente (
    id_ingrediente int primary key,    
	cantidad int,
    almacen int,
    estanteria int
    
);

create table if not exists Elabora (
    fk_id_plato int primary key,    
    fk_id_ingrediente int, 
    
	foreign key (fk_id_plato) references Plato(id_plato)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
	foreign key (fk_id_ingrediente) references Ingrediente(id_ingrediente)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

create table if not exists Estanteria (
    id_estanteria int primary key,    
	cantidad int,
    almacen int
);

create table if not exists Guarda (
    fk_id_ingrediente int primary key,    
    fk_id_estanteria int, 
    
	foreign key (fk_id_ingrediente) references Ingrediente(id_ingrediente)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
	foreign key (fk_id_estanteria) references Estanteria(id_estanteria)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

create table if not exists Almacen (
    id_almacen int primary key,  
    nombre nvarchar(255),
	num_almacen int,
    descripcion text
);

create table if not exists Almacena (
    fk_id_almacen int primary key,    
    fk_id_estanteria int, 
    
	foreign key (fk_id_almacen) references Almacen(id_almacen)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
	foreign key (fk_id_estanteria) references Estanteria(id_estanteria)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

INSERT INTO Empleado (dni, nombre, apellido, num_ss, tel_fijo, tel_movil) VALUES (1, 'Juan', 'Perez', 123456789, 911234567, 622345678);
INSERT INTO Empleado (dni, nombre, apellido, num_ss, tel_fijo, tel_movil) VALUES (2, 'María', 'Lopez', 987654321, 922345678, 633456789);
INSERT INTO Empleado (dni, nombre, apellido, num_ss, tel_fijo, tel_movil) VALUES (3, 'Carlos', 'Garcia', 456789123, 933456789, 644567890);
INSERT INTO Empleado (dni, nombre, apellido, num_ss, tel_fijo, tel_movil) VALUES (4, 'Laura', 'Martinez', 789123456, 944567890, 655678901);
INSERT INTO Empleado (dni, nombre, apellido, num_ss, tel_fijo, tel_movil) VALUES (5, 'Pedro', 'Gomez', 234567890, 955678901, 666789012);
INSERT INTO Empleado (dni, nombre, apellido, num_ss, tel_fijo, tel_movil) VALUES (6, 'Ana', 'Rodriguez', 678901234, 966789012, 677890123);
INSERT INTO Empleado (dni, nombre, apellido, num_ss, tel_fijo, tel_movil) VALUES (7, 'Sergio', 'Fernandez', 345678901, 977890123, 688901234);
INSERT INTO Empleado (dni, nombre, apellido, num_ss, tel_fijo, tel_movil) VALUES (8, 'Elena', 'Lara', 901234567, 988901234, 699012345);
INSERT INTO Empleado (dni, nombre, apellido, num_ss, tel_fijo, tel_movil) VALUES (9, 'Pablo', 'Sanchez', 567890123, 999012345, 700123456);
INSERT INTO Empleado (dni, nombre, apellido, num_ss, tel_fijo, tel_movil) VALUES (10, 'Isabel', 'Diaz', 678901235, 700123456, 711234567);

INSERT INTO Cocinero (fk_dni, anos_empresa) VALUES (1, '2010-05-15');
INSERT INTO Cocinero (fk_dni, anos_empresa) VALUES (2, '2015-11-20');
INSERT INTO Cocinero (fk_dni, anos_empresa) VALUES (3, '2008-08-10');
INSERT INTO Cocinero (fk_dni, anos_empresa) VALUES (4, '2012-03-22');
INSERT INTO Cocinero (fk_dni, anos_empresa) VALUES (5, '2018-09-14');
INSERT INTO Cocinero (fk_dni, anos_empresa) VALUES (6, '2009-11-30');
INSERT INTO Cocinero (fk_dni, anos_empresa) VALUES (7, '2011-07-05');
INSERT INTO Cocinero (fk_dni, anos_empresa) VALUES (8, '2014-02-18');
INSERT INTO Cocinero (fk_dni, anos_empresa) VALUES (9, '2016-06-03');
INSERT INTO Cocinero (fk_dni, anos_empresa) VALUES (10, '2017-12-10');

INSERT INTO Pinche (fk_dni, fecha_nacimiento, fk_dni_cocinero) VALUES (1, '1995-02-25', 1);
INSERT INTO Pinche (fk_dni, fecha_nacimiento, fk_dni_cocinero) VALUES (2, '1990-07-12', 2);
INSERT INTO Pinche (fk_dni, fecha_nacimiento, fk_dni_cocinero) VALUES (3, '1988-09-30', 3);
INSERT INTO Pinche (fk_dni, fecha_nacimiento, fk_dni_cocinero) VALUES (4, '1993-04-15', 4);
INSERT INTO Pinche (fk_dni, fecha_nacimiento, fk_dni_cocinero) VALUES (5, '1987-11-02', 5);
INSERT INTO Pinche (fk_dni, fecha_nacimiento, fk_dni_cocinero) VALUES (6, '1990-08-20', 6);
INSERT INTO Pinche (fk_dni, fecha_nacimiento, fk_dni_cocinero) VALUES (7, '1992-05-10', 7);
INSERT INTO Pinche (fk_dni, fecha_nacimiento, fk_dni_cocinero) VALUES (8, '1986-01-28', 8);
INSERT INTO Pinche (fk_dni, fecha_nacimiento, fk_dni_cocinero) VALUES (9, '1994-06-03', 9);
INSERT INTO Pinche (fk_dni, fecha_nacimiento, fk_dni_cocinero) VALUES (10, '1996-12-15', 10);

INSERT INTO Plato (id_plato, nombre, precio, tipo_plato) VALUES (1, 'Pizza', 9.99, 1);
INSERT INTO Plato (id_plato, nombre, precio, tipo_plato) VALUES (2, 'Filete', 15.50, 2);
INSERT INTO Plato (id_plato, nombre, precio, tipo_plato) VALUES (3, 'Ensalada', 7.95);
INSERT INTO Plato (id_plato, nombre, precio, tipo_plato) VALUES (4, 'Sopa', 6.75, 1);
INSERT INTO Plato (id_plato, nombre, precio, tipo_plato) VALUES (5, 'Pasta', 8.50, 1);
INSERT INTO Plato (id_plato, nombre, precio, tipo_plato) VALUES (6, 'Parrillada', 19.99, 2);
INSERT INTO Plato (id_plato, nombre, precio, tipo_plato) VALUES (7, 'Sushi', 14.95, 1);
INSERT INTO Plato (id_plato, nombre, precio, tipo_plato) VALUES (8, 'Pollo', 12.75, 2);
INSERT INTO Plato (id_plato, nombre, precio, tipo_plato) VALUES (9, 'Pastel', 5.99, 3);
INSERT INTO Plato (id_plato, nombre, precio, tipo_plato) VALUES (10, 'Paella', 17.50, 2);

INSERT INTO Cocina (fk_dni, fk_id_plato) VALUES (1, 1);
INSERT INTO Cocina (fk_dni, fk_id_plato) VALUES (2, 2);
INSERT INTO Cocina (fk_dni, fk_id_plato) VALUES (3, 3);
INSERT INTO Cocina (fk_dni, fk_id_plato) VALUES (4, 4);
INSERT INTO Cocina (fk_dni, fk_id_plato) VALUES (5, 5);
INSERT INTO Cocina (fk_dni, fk_id_plato) VALUES (6, 6);
INSERT INTO Cocina (fk_dni, fk_id_plato) VALUES (7, 7);
INSERT INTO Cocina (fk_dni, fk_id_plato) VALUES (8, 8);
INSERT INTO Cocina (fk_dni, fk_id_plato) VALUES (9, 9);
INSERT INTO Cocina (fk_dni, fk_id_plato) VALUES (10, 10);

INSERT INTO Ingrediente (id_ingrediente, cantidad, almacen, estanteria) VALUES (1, 100, 1, 1);
INSERT INTO Ingrediente (id_ingrediente, cantidad, almacen, estanteria) VALUES (2, 50, 2, 2);
INSERT INTO Ingrediente (id_ingrediente, cantidad, almacen, estanteria) VALUES (3, 200, 1, 3);
INSERT INTO Ingrediente (id_ingrediente, cantidad, almacen, estanteria) VALUES (4, 75, 2, 1);
INSERT INTO Ingrediente (id_ingrediente, cantidad, almacen, estanteria) VALUES (5, 120, 3, 2);
INSERT INTO Ingrediente (id_ingrediente, cantidad, almacen, estanteria) VALUES (6, 30, 1, 1);
INSERT INTO Ingrediente (id_ingrediente, cantidad, almacen, estanteria) VALUES (7, 90, 2, 2);
INSERT INTO Ingrediente (id_ingrediente, cantidad, almacen, estanteria) VALUES (8, 150, 3, 3);
INSERT INTO Ingrediente (id_ingrediente, cantidad, almacen, estanteria) VALUES (9, 45, 1, 2);
INSERT INTO Ingrediente (id_ingrediente, cantidad, almacen, estanteria) VALUES (10, 60, 2, 1);

INSERT INTO Elabora (fk_id_plato, fk_id_ingrediente) VALUES (1, 1);
INSERT INTO Elabora (fk_id_plato, fk_id_ingrediente) VALUES (2, 2);
INSERT INTO Elabora (fk_id_plato, fk_id_ingrediente) VALUES (3, 3);
INSERT INTO Elabora (fk_id_plato, fk_id_ingrediente) VALUES (4, 4);
INSERT INTO Elabora (fk_id_plato, fk_id_ingrediente) VALUES (5, 5);
INSERT INTO Elabora (fk_id_plato, fk_id_ingrediente) VALUES (6, 6);
INSERT INTO Elabora (fk_id_plato, fk_id_ingrediente) VALUES (7, 7);
INSERT INTO Elabora (fk_id_plato, fk_id_ingrediente) VALUES (8, 8);
INSERT INTO Elabora (fk_id_plato, fk_id_ingrediente) VALUES (9, 9);
INSERT INTO Elabora (fk_id_plato, fk_id_ingrediente) VALUES (10, 10);

INSERT INTO Estanteria (id_estanteria, cantidad, almacen) VALUES (1, 50, 1);
INSERT INTO Estanteria (id_estanteria, cantidad, almacen) VALUES (2, 30, 2);
INSERT INTO Estanteria (id_estanteria, cantidad, almacen) VALUES (3, 40, 1);
INSERT INTO Estanteria (id_estanteria, cantidad, almacen) VALUES (4, 60, 3);
INSERT INTO Estanteria (id_estanteria, cantidad, almacen) VALUES (5, 25, 1);
INSERT INTO Estanteria (id_estanteria, cantidad, almacen) VALUES (6, 35, 2);
INSERT INTO Estanteria (id_estanteria, cantidad, almacen) VALUES (7, 45, 3);
INSERT INTO Estanteria (id_estanteria, cantidad, almacen) VALUES (8, 55, 1);
INSERT INTO Estanteria (id_estanteria, cantidad, almacen) VALUES (9, 40, 2);
INSERT INTO Estanteria (id_estanteria, cantidad, almacen) VALUES (10, 20, 1);

INSERT INTO Guarda (fk_id_ingrediente, fk_id_estanteria) VALUES (1, 1);
INSERT INTO Guarda (fk_id_ingrediente, fk_id_estanteria) VALUES (2, 2);
INSERT INTO Guarda (fk_id_ingrediente, fk_id_estanteria) VALUES (3, 3);
INSERT INTO Guarda (fk_id_ingrediente, fk_id_estanteria) VALUES (4, 4);
INSERT INTO Guarda (fk_id_ingrediente, fk_id_estanteria) VALUES (5, 5);
INSERT INTO Guarda (fk_id_ingrediente, fk_id_estanteria) VALUES (6, 6);
INSERT INTO Guarda (fk_id_ingrediente, fk_id_estanteria) VALUES (7, 7);
INSERT INTO Guarda (fk_id_ingrediente, fk_id_estanteria) VALUES (8, 8);
INSERT INTO Guarda (fk_id_ingrediente, fk_id_estanteria) VALUES (9, 9);
INSERT INTO Guarda (fk_id_ingrediente, fk_id_estanteria) VALUES (10, 10);

INSERT INTO Almacen (id_almacen, nombre, num_almacen, descripcion) VALUES (1, 'Almacen 1', 101, 'Descripcion 1');
INSERT INTO Almacen (id_almacen, nombre, num_almacen, descripcion) VALUES (2, 'Almacen 2', 102, 'Descripcion 2');
INSERT INTO Almacen (id_almacen, nombre, num_almacen, descripcion) VALUES (3, 'Almacen 3', 103, 'Descripcion 3');
INSERT INTO Almacen (id_almacen, nombre, num_almacen, descripcion) VALUES (4, 'Almacen 4', 104, 'Descripcion 4');
INSERT INTO Almacen (id_almacen, nombre, num_almacen, descripcion) VALUES (5, 'Almacen 5', 105, 'Descripcion 5');
INSERT INTO Almacen (id_almacen, nombre, num_almacen, descripcion) VALUES (6, 'Almacen 6', 106, 'Descripcion 6');
INSERT INTO Almacen (id_almacen, nombre, num_almacen, descripcion) VALUES (7, 'Almacen 7', 107, 'Descripcion 7');
INSERT INTO Almacen (id_almacen, nombre, num_almacen, descripcion) VALUES (8, 'Almacen 8', 108, 'Descripcion 8');
INSERT INTO Almacen (id_almacen, nombre, num_almacen, descripcion) VALUES (9, 'Almacen 9', 109, 'Descripcion 9');
INSERT INTO Almacen (id_almacen, nombre, num_almacen, descripcion) VALUES (10, 'Almacen 10', 110, 'Descripcion 10');

INSERT INTO Almacena (fk_id_almacen, fk_id_estanteria) VALUES (1, 1);
INSERT INTO Almacena (fk_id_almacen, fk_id_estanteria) VALUES (2, 2);
INSERT INTO Almacena (fk_id_almacen, fk_id_estanteria) VALUES (3, 3);
INSERT INTO Almacena (fk_id_almacen, fk_id_estanteria) VALUES (4, 4);
INSERT INTO Almacena (fk_id_almacen, fk_id_estanteria) VALUES (5, 5);
INSERT INTO Almacena (fk_id_almacen, fk_id_estanteria) VALUES (6, 6);
INSERT INTO Almacena (fk_id_almacen, fk_id_estanteria) VALUES (7, 7);
INSERT INTO Almacena (fk_id_almacen, fk_id_estanteria) VALUES (8, 8);
INSERT INTO Almacena (fk_id_almacen, fk_id_estanteria) VALUES (9, 9);
INSERT INTO Almacena (fk_id_almacen, fk_id_estanteria) VALUES (10, 10);

UPDATE Empleado SET nombre = 'Jose' WHERE dni = 1;
UPDATE Empleado SET tel_fijo = 999999999 WHERE dni = 2;
UPDATE Cocinero SET anos_empresa = '2020-03-10' WHERE fk_dni = 1;
UPDATE Cocinero SET fk_dni = 5 WHERE fk_dni = 2;
UPDATE Pinche SET fecha_nacimiento = '1997-08-15' WHERE fk_dni = 1;
UPDATE Pinche SET fk_dni_cocinero = 6 WHERE fk_dni = 2;
UPDATE Plato SET precio = 12.99 WHERE id_plato = 1;
UPDATE Plato SET tipo_plato = 3 WHERE id_plato = 2;
UPDATE Cocina SET fk_dni = 7 WHERE fk_id_plato = 1;
UPDATE Cocina SET fk_id_plato = 4 WHERE fk_dni = 2;
UPDATE Ingrediente SET cantidad = 150 WHERE id_ingrediente = 1;
UPDATE Ingrediente SET almacen = 3 WHERE id_ingrediente = 2;
UPDATE Elabora SET fk_id_ingrediente = 6 WHERE fk_id_plato = 1;
UPDATE Elabora SET fk_id_plato = 3 WHERE fk_id_ingrediente = 2;
UPDATE Estanteria SET cantidad = 75 WHERE id_estanteria = 1;
UPDATE Estanteria SET almacen = 2 WHERE id_estanteria = 2;
UPDATE Guarda SET fk_id_estanteria = 5 WHERE fk_id_ingrediente = 1;
UPDATE Guarda SET fk_id_ingrediente = 4 WHERE fk_id_estanteria = 2;
UPDATE Almacen SET num_almacen = 201 WHERE id_almacen = 1;
UPDATE Almacen SET descripcion = 'Descripción actualizada' WHERE id_almacen = 2;
UPDATE Almacena SET fk_id_estanteria = 8 WHERE fk_id_almacen = 1;
UPDATE Almacena SET fk_id_almacen = 7 WHERE fk_id_estanteria = 2;

DELETE FROM Empleado WHERE dni = 3;
DELETE FROM Empleado WHERE dni = 4;
DELETE FROM Cocinero WHERE fk_dni = 3;
DELETE FROM Cocinero WHERE fk_dni = 4;
DELETE FROM Pinche WHERE fk_dni = 3;
DELETE FROM Pinche WHERE fk_dni = 4;
DELETE FROM Plato WHERE id_plato = 3;
DELETE FROM Plato WHERE id_plato = 4;
DELETE FROM Cocina WHERE fk_dni = 3;
DELETE FROM Cocina WHERE fk_id_plato = 3;
DELETE FROM Ingrediente WHERE id_ingrediente = 3;
DELETE FROM Ingrediente WHERE id_ingrediente = 4;
DELETE FROM Elabora WHERE fk_id_plato = 3;
DELETE FROM Elabora WHERE fk_id_ingrediente = 4;
DELETE FROM Estanteria WHERE id_estanteria = 3;
DELETE FROM Estanteria WHERE id_estanteria = 4;
DELETE FROM Guarda WHERE fk_id_ingrediente = 3;
DELETE FROM Guarda WHERE fk_id_estanteria = 4;
DELETE FROM Almacen WHERE id_almacen = 3;
DELETE FROM Almacen WHERE id_almacen = 4;
DELETE FROM Almacena WHERE fk_id_almacen = 3;
DELETE FROM Almacena WHERE fk_id_estanteria = 4;
