drop database if exists ejercicio03;
create database if not exists ejercicio03;
use ejercicio03;

CREATE TABLE IF NOT EXISTS Cientifico (
    dni VARCHAR(8) PRIMARY KEY,
    nomApels NVARCHAR(255)
);

CREATE TABLE IF NOT EXISTS Proyecto (
    id CHAR(4) PRIMARY KEY,
    nombre NVARCHAR(255),
    horas INT
);

CREATE TABLE IF NOT EXISTS Asignado (
    fk_dni_cientifico VARCHAR(8) PRIMARY KEY,
    fk_id_proyecto CHAR(4),
    FOREIGN KEY (fk_dni_cientifico)
        REFERENCES Cientifico (dni)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (fk_id_proyecto)
        REFERENCES Proyecto (id)
        ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO Cientifico (dni, nomApels) VALUES ('C1', 'Albert Einstein');
INSERT INTO Cientifico (dni, nomApels) VALUES ('C2', 'Marie Curie');
INSERT INTO Cientifico (dni, nomApels) VALUES ('C3', 'Isaac Newton');
INSERT INTO Cientifico (dni, nomApels) VALUES ('C4', 'Galileo Galilei');
INSERT INTO Cientifico (dni, nomApels) VALUES ('C5', 'Charles Darwin');

INSERT INTO Proyecto (id, nombre, horas) VALUES ('P1', 'Teoria', 100);
INSERT INTO Proyecto (id, nombre, horas) VALUES ('P2', 'Radiactividad', 80);
INSERT INTO Proyecto (id, nombre, horas) VALUES ('P3', 'Ley', 120);
INSERT INTO Proyecto (id, nombre, horas) VALUES ('P4', 'Observaciones', 90);
INSERT INTO Proyecto (id, nombre, horas) VALUES ('P5', 'Teoria2', 110);

INSERT INTO Asignado (fk_dni_cientifico, fk_id_proyecto) VALUES ('C1', 'P1');
INSERT INTO Asignado (fk_dni_cientifico, fk_id_proyecto) VALUES ('C2', 'P2');
INSERT INTO Asignado (fk_dni_cientifico, fk_id_proyecto) VALUES ('C3', 'P3');
INSERT INTO Asignado (fk_dni_cientifico, fk_id_proyecto) VALUES ('C4', 'P4');
INSERT INTO Asignado (fk_dni_cientifico, fk_id_proyecto) VALUES ('C5', 'P5');

UPDATE Cientifico SET nomApels = 'Stephen Hawking' WHERE dni = 'C1';
UPDATE Cientifico SET nomApels = 'Albert Frankenstein' WHERE dni = 'C2';
DELETE FROM Cientifico WHERE dni = 'C3';
DELETE FROM Cientifico WHERE dni = 'C4';

UPDATE Proyecto SET horas = 110 WHERE id = 'P1';
UPDATE Proyecto SET horas = 70 WHERE id = 'P2';
DELETE FROM Proyecto WHERE id = 'P3';
DELETE FROM Proyecto WHERE id = 'P4';

UPDATE Asignado SET fk_id_proyecto = 'P1' WHERE fk_dni_cientifico = 'C1';
UPDATE Asignado SET fk_id_proyecto = 'P2' WHERE fk_dni_cientifico = 'C2';
DELETE FROM Asignado WHERE fk_dni_cientifico = 'C3';
DELETE FROM Asignado WHERE fk_dni_cientifico = 'C4';