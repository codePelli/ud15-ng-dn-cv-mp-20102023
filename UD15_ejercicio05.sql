drop database if exists ud14_ejercicio05;
create database if not exists ud14_ejercicio05;
use ud14_ejercicio05;

CREATE TABLE IF NOT EXISTS Facultad (
    codigo INT PRIMARY KEY,
    nombre NVARCHAR(100)
);

CREATE TABLE IF NOT EXISTS Equipo (
    num_serie CHAR(4) PRIMARY KEY,
    nombre NVARCHAR(100),
    facultad INT,
    FOREIGN KEY (facultad)
        REFERENCES Facultad (codigo)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS Investigador (
    dni VARCHAR(8) PRIMARY KEY,
    nomapels NVARCHAR(255),
    facultad INT,
    FOREIGN KEY (facultad)
        REFERENCES Facultad (codigo)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS Reserva (
    fk_num_serie CHAR(4) PRIMARY KEY,
    fk_dni VARCHAR(8),
    comienzo DATE,
    fin DATE,
    FOREIGN KEY (fk_dni)
        REFERENCES Investigador (dni)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (fk_num_serie)
        REFERENCES Equipo (num_serie)
        ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO Facultad (codigo, nombre) VALUES (1, 'Facultad de Ciencias');
INSERT INTO Facultad (codigo, nombre) VALUES (2, 'Facultad de Ingenieria');
INSERT INTO Facultad (codigo, nombre) VALUES (3, 'Facultad de Medicina');
INSERT INTO Facultad (codigo, nombre) VALUES (4, 'Facultad de Humanidades');
INSERT INTO Facultad (codigo, nombre) VALUES (5, 'Facultad de Economia');
INSERT INTO Facultad (codigo, nombre) VALUES (6, 'Facultad de Derecho');
INSERT INTO Facultad (codigo, nombre) VALUES (7, 'Facultad de Arquitectura');
INSERT INTO Facultad (codigo, nombre) VALUES (8, 'Facultad de Psicologia');
INSERT INTO Facultad (codigo, nombre) VALUES (9, 'Facultad de Educacion');
INSERT INTO Facultad (codigo, nombre) VALUES (10, 'Facultad de Quimica');

INSERT INTO Equipo (num_serie, nombre, facultad) VALUES ('E001', 'Microscopio', 1);
INSERT INTO Equipo (num_serie, nombre, facultad) VALUES ('E002', 'Telescopio', 2);
INSERT INTO Equipo (num_serie, nombre, facultad) VALUES ('E003', 'Centrifuga', 3);
INSERT INTO Equipo (num_serie, nombre, facultad) VALUES ('E004', 'Ordenador', 4);
INSERT INTO Equipo (num_serie, nombre, facultad) VALUES ('E005', 'Proyector', 5);
INSERT INTO Equipo (num_serie, nombre, facultad) VALUES ('E006', 'PC', 6);
INSERT INTO Equipo (num_serie, nombre, facultad) VALUES ('E007', 'Microscopio2', 7);
INSERT INTO Equipo (num_serie, nombre, facultad) VALUES ('E008', 'PC2', 8);
INSERT INTO Equipo (num_serie, nombre, facultad) VALUES ('E009', 'Fotocopiadora', 9);
INSERT INTO Equipo (num_serie, nombre, facultad) VALUES ('E010', 'PC3', 10);

INSERT INTO Investigador (dni, nomapels, facultad) VALUES ('I001', 'Juan Perez', 1);
INSERT INTO Investigador (dni, nomapels, facultad) VALUES ('I002', 'Maria Garcia', 2);
INSERT INTO Investigador (dni, nomapels, facultad) VALUES ('I003', 'Luis Rodriguez', 3);
INSERT INTO Investigador (dni, nomapels, facultad) VALUES ('I004', 'Ana Lopez', 4);
INSERT INTO Investigador (dni, nomapels, facultad) VALUES ('I005', 'Carlos Sanchez', 5);
INSERT INTO Investigador (dni, nomapels, facultad) VALUES ('I006', 'Laura Fernandez', 6);
INSERT INTO Investigador (dni, nomapels, facultad) VALUES ('I007', 'Pedro Martinez', 7);
INSERT INTO Investigador (dni, nomapels, facultad) VALUES ('I008', 'Sofía Ramirez', 8);
INSERT INTO Investigador (dni, nomapels, facultad) VALUES ('I009', 'Pablo Jimenez', 9);
INSERT INTO Investigador (dni, nomapels, facultad) VALUES ('I010', 'Elena Castro', 10);

INSERT INTO Reserva (fk_num_serie, fk_dni, comienzo, fin) VALUES ('E001', 'I001', '2023-10-01', '2023-10-10');
INSERT INTO Reserva (fk_num_serie, fk_dni, comienzo, fin) VALUES ('E002', 'I002', '2023-10-02', '2023-10-11');
INSERT INTO Reserva (fk_num_serie, fk_dni, comienzo, fin) VALUES ('E003', 'I003', '2023-10-03', '2023-10-12');
INSERT INTO Reserva (fk_num_serie, fk_dni, comienzo, fin) VALUES ('E004', 'I004', '2023-10-04', '2023-10-13');
INSERT INTO Reserva (fk_num_serie, fk_dni, comienzo, fin) VALUES ('E005', 'I005', '2023-10-05', '2023-10-14');
INSERT INTO Reserva (fk_num_serie, fk_dni, comienzo, fin) VALUES ('E006', 'I006', '2023-10-06', '2023-10-15');
INSERT INTO Reserva (fk_num_serie, fk_dni, comienzo, fin) VALUES ('E007', 'I007', '2023-10-07', '2023-10-16');
INSERT INTO Reserva (fk_num_serie, fk_dni, comienzo, fin) VALUES ('E008', 'I008', '2023-10-08', '2023-10-17');
INSERT INTO Reserva (fk_num_serie, fk_dni, comienzo, fin) VALUES ('E009', 'I009', '2023-10-09', '2023-10-18');
INSERT INTO Reserva (fk_num_serie, fk_dni, comienzo, fin) VALUES ('E010', 'I010', '2023-10-10', '2023-10-19');

UPDATE Facultad SET nombre = 'Facultad de Informática' WHERE codigo = 1;
UPDATE Facultad SET nombre = 'Facultad de Medicina' WHERE codigo = 2;
DELETE FROM Facultad WHERE codigo = 3;
DELETE FROM Facultad WHERE codigo = 4;

UPDATE Equipo SET nombre = 'Espectroscopio' WHERE num_serie = 'E001';
UPDATE Equipo SET nombre = 'Microscopio Electrónico de Barrido' WHERE num_serie = 'E002';
DELETE FROM Equipo WHERE num_serie = 'E003';
DELETE FROM Equipo WHERE num_serie = 'E004';

UPDATE Investigador SET nomapels = 'Antonio López' WHERE dni = 'I001';
UPDATE Investigador SET nomapels = 'Luisa Rodríguez' WHERE dni = 'I002';
DELETE FROM Investigador WHERE dni = 'I005';
DELETE FROM Investigador WHERE dni = 'I006';

UPDATE Reserva SET fin = '2023-10-20' WHERE fk_num_serie = 'E001';
UPDATE Reserva SET fin = '2023-10-21' WHERE fk_num_serie = 'E002';
DELETE FROM Reserva WHERE fk_num_serie = 'E007';
DELETE FROM Reserva WHERE fk_num_serie = 'E008';
