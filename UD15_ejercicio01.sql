drop database if exists ejercicio01;
create database if not exists ejercicio01;
use ejercicio01;

create table if not exists Despacho (
    numero int primary key,
    capacidad int
);

create table if not exists Director (
    dni int primary key,
    nomApels nvarchar(255),
    fk_numero_despacho int,
    
    foreign key (fk_numero_despacho) references Despacho(numero)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

INSERT INTO Despacho (numero, capacidad) VALUES (101, 5);
INSERT INTO Despacho (numero, capacidad) VALUES (102, 4);
INSERT INTO Despacho (numero, capacidad) VALUES (103, 6);
INSERT INTO Despacho (numero, capacidad) VALUES (104, 3);
INSERT INTO Despacho (numero, capacidad) VALUES (105, 7);
INSERT INTO Despacho (numero, capacidad) VALUES (106, 4);
INSERT INTO Despacho (numero, capacidad) VALUES (107, 5);
INSERT INTO Despacho (numero, capacidad) VALUES (108, 6);
INSERT INTO Despacho (numero, capacidad) VALUES (109, 4);
INSERT INTO Despacho (numero, capacidad) VALUES (110, 5);

INSERT INTO Director (dni, nomApels, fk_numero_despacho) VALUES (1001, 'Juan Perez', 101);
INSERT INTO Director (dni, nomApels, fk_numero_despacho) VALUES (1002, 'Maria Garcia', 102);
INSERT INTO Director (dni, nomApels, fk_numero_despacho) VALUES (1003, 'Luis Rodriguez', 103);
INSERT INTO Director (dni, nomApels, fk_numero_despacho) VALUES (1004, 'Ana Lopez', 104);
INSERT INTO Director (dni, nomApels, fk_numero_despacho) VALUES (1005, 'Carlos Sanchez', 105);
INSERT INTO Director (dni, nomApels, fk_numero_despacho) VALUES (1006, 'Laura Fernandez', 106);
INSERT INTO Director (dni, nomApels, fk_numero_despacho) VALUES (1007, 'Pedro Sanchez', 107);
INSERT INTO Director (dni, nomApels, fk_numero_despacho) VALUES (1008, 'Sofia Ramirez', 108);
INSERT INTO Director (dni, nomApels, fk_numero_despacho) VALUES (1009, 'Pablo Jimenez', 109);
INSERT INTO Director (dni, nomApels, fk_numero_despacho) VALUES (1010, 'Elena Castro', 110);


UPDATE Director SET fk_numero_despacho = NULL WHERE fk_numero_despacho = 101;
UPDATE Director SET nomApels = 'Maria Lopez' WHERE dni = 1002;
DELETE FROM Director WHERE dni = 1001;
DELETE FROM Director WHERE dni = 1003;

UPDATE Despacho SET capacidad = 8 WHERE numero = 101;
UPDATE Despacho SET capacidad = 9 WHERE numero = 103;
DELETE FROM Despacho WHERE numero = 101;
DELETE FROM Despacho WHERE numero = 102;