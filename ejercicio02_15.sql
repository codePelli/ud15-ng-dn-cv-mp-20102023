drop database if exists ejercicio02;
create database if not exists ejercicio02;
use ejercicio02;

create table if not exists Pieza (
    codigo int primary key,
    nombre nvarchar(100)
);

create table if not exists Proveedor (
    id char(4) primary key,
    nombre nvarchar(100)
);

create table if not exists Suministra (
    fk_codigo_pieza int primary key,
    fk_id_proveedor char(4),
	precio int,
    
    foreign key (fk_codigo_pieza) references Pieza(codigo)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
	foreign key (fk_id_proveedor) references Proveedor(id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

INSERT INTO Pieza (codigo, nombre) VALUES (1, 'Tuerca');
INSERT INTO Pieza (codigo, nombre) VALUES (2, 'Tornillo');
INSERT INTO Pieza (codigo, nombre) VALUES (3, 'Arandela');
INSERT INTO Pieza (codigo, nombre) VALUES (4, 'Clavo');
INSERT INTO Pieza (codigo, nombre) VALUES (5, 'Clavo');

INSERT INTO Proveedor (id, nombre) VALUES ('P1', 'Proveedor A');
INSERT INTO Proveedor (id, nombre) VALUES ('P2', 'Proveedor B');
INSERT INTO Proveedor (id, nombre) VALUES ('P3', 'Proveedor C');
INSERT INTO Proveedor (id, nombre) VALUES ('P4', 'Proveedor D');
INSERT INTO Proveedor (id, nombre) VALUES ('P5', 'Proveedor E');

INSERT INTO Suministra (fk_codigo_pieza, fk_id_proveedor, precio) VALUES (1, 'P1', 5);
INSERT INTO Suministra (fk_codigo_pieza, fk_id_proveedor, precio) VALUES (2, 'P2', 8);
INSERT INTO Suministra (fk_codigo_pieza, fk_id_proveedor, precio) VALUES (3, 'P3', 3);
INSERT INTO Suministra (fk_codigo_pieza, fk_id_proveedor, precio) VALUES (4, 'P4', 6);
INSERT INTO Suministra (fk_codigo_pieza, fk_id_proveedor, precio) VALUES (5, 'P5', 7);

UPDATE Pieza SET nombre = 'Clavo' WHERE codigo = 2;
UPDATE Pieza SET nombre = 'Clavo' WHERE codigo = 3;
DELETE FROM Pieza WHERE codigo = 4;
DELETE FROM Pieza WHERE codigo = 5;

UPDATE Proveedor SET nombre = 'Proveedor X' WHERE id = 'P1';
UPDATE Proveedor SET nombre = 'Proveedor Y' WHERE id = 'P2';
DELETE FROM Proveedor WHERE id = 'P3';
DELETE FROM Proveedor WHERE id = 'P4';

UPDATE Suministra SET precio = 10 WHERE fk_codigo_pieza = 1 AND fk_id_proveedor = 'P1';
UPDATE Suministra SET precio = 12 WHERE fk_codigo_pieza = 2 AND fk_id_proveedor = 'P2';
DELETE FROM Suministra WHERE fk_codigo_pieza = 3 AND fk_id_proveedor = 'P3';
DELETE FROM Suministra WHERE fk_codigo_pieza = 4 AND fk_id_proveedor = 'P4';