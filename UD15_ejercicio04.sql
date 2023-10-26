drop database if exists ejercicio04;
create database if not exists ejercicio04;
use ejercicio04;

CREATE TABLE IF NOT EXISTS Cajero (
    codigo INT PRIMARY KEY,
    nomapels VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS Maquina_registradora (
    codigo INT PRIMARY KEY,
    piso INT
);

CREATE TABLE IF NOT EXISTS Producto (
    codigo INT PRIMARY KEY,
    nombre NVARCHAR(100),
    precio INT
);

CREATE TABLE IF NOT EXISTS Venta (
    fk1_codigo INT PRIMARY KEY,
    fk2_codigo INT,
    fk3_codigo INT,
    FOREIGN KEY (fk1_codigo)
        REFERENCES Cajero (codigo)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (fk2_codigo)
        REFERENCES Maquina_registradora (codigo)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (fk3_codigo)
        REFERENCES Producto (codigo)
        ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO Cajero (codigo, nomapels) VALUES (1, 'Juan Perez');
INSERT INTO Cajero (codigo, nomapels) VALUES (2, 'Maria Garcia');
INSERT INTO Cajero (codigo, nomapels) VALUES (3, 'Luis Rodriguez');
INSERT INTO Cajero (codigo, nomapels) VALUES (4, 'Ana Lopez');
INSERT INTO Cajero (codigo, nomapels) VALUES (5, 'Carlos Sanchez');
INSERT INTO Cajero (codigo, nomapels) VALUES (6, 'Laura Fernandez');
INSERT INTO Cajero (codigo, nomapels) VALUES (7, 'Pedro Martinez');
INSERT INTO Cajero (codigo, nomapels) VALUES (8, 'Sofia Ramirez');
INSERT INTO Cajero (codigo, nomapels) VALUES (9, 'Pablo Jimenez');
INSERT INTO Cajero (codigo, nomapels) VALUES (10, 'Elena Castro');

INSERT INTO Maquina_registradora (codigo, piso) VALUES (101, 1);
INSERT INTO Maquina_registradora (codigo, piso) VALUES (102, 2);
INSERT INTO Maquina_registradora (codigo, piso) VALUES (103, 1);
INSERT INTO Maquina_registradora (codigo, piso) VALUES (104, 3);
INSERT INTO Maquina_registradora (codigo, piso) VALUES (105, 2);
INSERT INTO Maquina_registradora (codigo, piso) VALUES (106, 3);
INSERT INTO Maquina_registradora (codigo, piso) VALUES (107, 1);
INSERT INTO Maquina_registradora (codigo, piso) VALUES (108, 2);
INSERT INTO Maquina_registradora (codigo, piso) VALUES (109, 3);
INSERT INTO Maquina_registradora (codigo, piso) VALUES (110, 1);

INSERT INTO Producto (codigo, nombre, precio) VALUES (1001, 'Camiseta', 20);
INSERT INTO Producto (codigo, nombre, precio) VALUES (1002, 'Zapatos', 50);
INSERT INTO Producto (codigo, nombre, precio) VALUES (1003, 'Pantalones', 30);
INSERT INTO Producto (codigo, nombre, precio) VALUES (1004, 'Sombrero', 15);
INSERT INTO Producto (codigo, nombre, precio) VALUES (1005, 'Bufanda', 10);
INSERT INTO Producto (codigo, nombre, precio) VALUES (1006, 'Guantes', 12);
INSERT INTO Producto (codigo, nombre, precio) VALUES (1007, 'Vestido', 40);
INSERT INTO Producto (codigo, nombre, precio) VALUES (1008, 'Corbata', 8);
INSERT INTO Producto (codigo, nombre, precio) VALUES (1009, 'Calcetines', 5);
INSERT INTO Producto (codigo, nombre, precio) VALUES (1010, 'Cinturon', 18);

INSERT INTO Venta (fk1_codigo, fk2_codigo, fk3_codigo) VALUES (1, 101, 1001);
INSERT INTO Venta (fk1_codigo, fk2_codigo, fk3_codigo) VALUES (2, 102, 1002);
INSERT INTO Venta (fk1_codigo, fk2_codigo, fk3_codigo) VALUES (3, 103, 1003);
INSERT INTO Venta (fk1_codigo, fk2_codigo, fk3_codigo) VALUES (4, 104, 1004);
INSERT INTO Venta (fk1_codigo, fk2_codigo, fk3_codigo) VALUES (5, 105, 1005);
INSERT INTO Venta (fk1_codigo, fk2_codigo, fk3_codigo) VALUES (6, 106, 1006);
INSERT INTO Venta (fk1_codigo, fk2_codigo, fk3_codigo) VALUES (7, 107, 1007);
INSERT INTO Venta (fk1_codigo, fk2_codigo, fk3_codigo) VALUES (8, 108, 1008);
INSERT INTO Venta (fk1_codigo, fk2_codigo, fk3_codigo) VALUES (9, 109, 1009);
INSERT INTO Venta (fk1_codigo, fk2_codigo, fk3_codigo) VALUES (10, 110, 1010);

UPDATE Cajero SET nomapels = 'Antonio Lopez' WHERE codigo = 1;
UPDATE Cajero SET nomapels = 'Luisa Rodriguez' WHERE codigo = 2;
DELETE FROM Cajero WHERE codigo = 3;
DELETE FROM Cajero WHERE codigo = 4;

UPDATE Maquina_registradora SET piso = 3 WHERE codigo = 101;
UPDATE Maquina_registradora SET piso = 1 WHERE codigo = 102;
DELETE FROM Maquina_registradora WHERE codigo = 103;
DELETE FROM Maquina_registradora WHERE codigo = 104;

UPDATE Producto SET precio = 25 WHERE codigo = 1001;
UPDATE Producto SET precio = 60 WHERE codigo = 1002;
DELETE FROM Producto WHERE codigo = 1003;
DELETE FROM Producto WHERE codigo = 1004;

UPDATE Venta SET fk3_codigo = 1004 WHERE fk1_codigo = 1;
UPDATE Venta SET fk3_codigo = 1006 WHERE fk1_codigo = 2;
DELETE FROM Venta WHERE fk1_codigo = 5;
DELETE FROM Venta WHERE fk1_codigo = 6;