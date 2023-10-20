DROP DATABASE IF EXISTS ejercio11;
CREATE DATABASE IF NOT EXISTS ejercio11;
USE ejercio11;

CREATE TABLE IF NOT EXISTS AccidentesGeograficos (
    id_nombre VARCHAR(200) PRIMARY KEY,
    posicion_horizontal DOUBLE,
    posicion_vertical DOUBLE
);

CREATE TABLE IF NOT EXISTS Rio (
    id_nombre VARCHAR(200) PRIMARY KEY,
    id_nombre_accidentes_geograficos VARCHAR(200),
    longitud DOUBLE,
    FOREIGN KEY (id_nombre_accidentes_geograficos)
        REFERENCES AccidentesGeograficos (id_nombre)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS Lago (
    id_nombre VARCHAR(200) PRIMARY KEY,
    id_nombre_accidentes_geograficos VARCHAR(200),
    extension DOUBLE,
    FOREIGN KEY (id_nombre_accidentes_geograficos)
        REFERENCES AccidentesGeograficos (id_nombre)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS Montana (
    id_nombre VARCHAR(200) PRIMARY KEY,
    id_nombre_accidentes_geograficos VARCHAR(200),
    altura DOUBLE,
    FOREIGN KEY (id_nombre_accidentes_geograficos)
        REFERENCES AccidentesGeograficos (id_nombre)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS Pais (
    id_nombre VARCHAR(200) PRIMARY KEY,
    extension DOUBLE,
    poblacion INT
);

CREATE TABLE IF NOT EXISTS Localidad (
    id_nombre VARCHAR(200) PRIMARY KEY,
    id_pais VARCHAR(200),
    FOREIGN KEY (id_pais)
        REFERENCES Pais (id_nombre)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS Pasa (
    id_nombre_rio VARCHAR(200),
    id_nombre_localidad VARCHAR(200),
    FOREIGN KEY (id_nombre_rio)
        REFERENCES Rio (id_nombre)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (id_nombre_localidad)
        REFERENCES Localidad (id_nombre)
        ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (id_nombre_rio, id_nombre_localidad)
);

CREATE TABLE IF NOT EXISTS Encuentra (
    id_nombre VARCHAR(200),
    fk_id_nombre_pais VARCHAR(200),
    FOREIGN KEY (id_nombre)
        REFERENCES AccidentesGeograficos (id_nombre)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (fk_id_nombre_pais)
        REFERENCES Pais (id_nombre)
        ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO AccidentesGeograficos (id_nombre, posicion_horizontal, posicion_vertical) 
VALUES ('Monte', 32.6534, 70.0115);
INSERT INTO AccidentesGeograficos (id_nombre, posicion_horizontal, posicion_vertical) 
VALUES ('Montana', 32.6534, 70.0115);
INSERT INTO AccidentesGeograficos (id_nombre, posicion_horizontal, posicion_vertical) 
VALUES ('Cima', 32.6534, 70.0115);
INSERT INTO AccidentesGeograficos (id_nombre, posicion_horizontal, posicion_vertical) 
VALUES ('Volcan', 32.6534, 70.0115);
INSERT INTO AccidentesGeograficos (id_nombre, posicion_horizontal, posicion_vertical) 
VALUES ('Monte2', 32.6534, 70.0115);
INSERT INTO AccidentesGeograficos (id_nombre, posicion_horizontal, posicion_vertical) 
VALUES ('Cima2', 32.6534, 70.0115);
INSERT INTO AccidentesGeograficos (id_nombre, posicion_horizontal, posicion_vertical) 
VALUES ('Volcan2', 32.6534, 70.0115);
INSERT INTO AccidentesGeograficos (id_nombre, posicion_horizontal, posicion_vertical) 
VALUES ('Cima3', 32.6534, 70.0115);
INSERT INTO AccidentesGeograficos (id_nombre, posicion_horizontal, posicion_vertical) 
VALUES ('Montana4', 32.6534, 70.0115);
INSERT INTO AccidentesGeograficos (id_nombre, posicion_horizontal, posicion_vertical) 
VALUES ('Volcan6', 32.6534, 70.0115);

INSERT INTO Rio (id_nombre, id_nombre_accidentes_geograficos, longitud)
VALUES ('Rio1', 'Rio1', 6575.5);
INSERT INTO Rio (id_nombre, id_nombre_accidentes_geograficos, longitud)
VALUES ('Rio2', 'Rio2', 220.4);
INSERT INTO Rio (id_nombre, id_nombre_accidentes_geograficos, longitud)
VALUES ('Rio3', 'Rio3', 6300.0);
INSERT INTO Rio (id_nombre, id_nombre_accidentes_geograficos, longitud)
VALUES ('Rio4', 'Rio4', 3766.0);
INSERT INTO Rio (id_nombre, id_nombre_accidentes_geograficos, longitud)
VALUES ('Rio5', 'Rio5', 6650.0);
INSERT INTO Rio (id_nombre, id_nombre_accidentes_geograficos, longitud)
VALUES ('Rio7', 'Rio7', 2857.0);
INSERT INTO Rio (id_nombre, id_nombre_accidentes_geograficos, longitud)
VALUES ('Rio8', 'Rio8', 4880.0);
INSERT INTO Rio (id_nombre, id_nombre_accidentes_geograficos, longitud)
VALUES ('Rio9', 'Rio9', 346.0);
INSERT INTO Rio (id_nombre, id_nombre_accidentes_geograficos, longitud)
VALUES ('Rio10', 'Rio10', 3766.0);
INSERT INTO Rio (id_nombre, id_nombre_accidentes_geograficos, longitud)
VALUES ('Rio11', 'Rio11', 2330.0);

INSERT INTO Lago (id_nombre, id_nombre_accidentes_geograficos, extension)
VALUES ('Lago1', 'Lago1', 12345.67);
INSERT INTO Lago (id_nombre, id_nombre_accidentes_geograficos, extension)
VALUES ('Lago2', 'Lago2', 54321.0);
INSERT INTO Lago (id_nombre, id_nombre_accidentes_geograficos, extension)
VALUES ('Lago3', 'Lago3', 9876.54);
INSERT INTO Lago (id_nombre, id_nombre_accidentes_geograficos, extension)
VALUES ('Lago4', 'Lago4', 1234.56);
INSERT INTO Lago (id_nombre, id_nombre_accidentes_geograficos, extension)
VALUES ('Lago5', 'Lago5', 6543.21);
INSERT INTO Lago (id_nombre, id_nombre_accidentes_geograficos, extension)
VALUES ('Lago6', 'Lago6', 5678.90);
INSERT INTO Lago (id_nombre, id_nombre_accidentes_geograficos, extension)
VALUES ('Lago7', 'Lago7', 8901.23);
INSERT INTO Lago (id_nombre, id_nombre_accidentes_geograficos, extension)
VALUES ('Lago8', 'Lago8', 4321.0);
INSERT INTO Lago (id_nombre, id_nombre_accidentes_geograficos, extension)
VALUES ('Lago9', 'Lago9', 654.32);
INSERT INTO Lago (id_nombre, id_nombre_accidentes_geograficos, extension)
VALUES ('Lago10', 'Lago10', 987.65);

INSERT INTO Montana (id_nombre, id_nombre_accidentes_geograficos, altura)
VALUES ('Montana1', 'Montana1', 5678.9);
INSERT INTO Montana (id_nombre, id_nombre_accidentes_geograficos, altura)
VALUES ('Montana2', 'Montana2', 9876.5);
INSERT INTO Montana (id_nombre, id_nombre_accidentes_geograficos, altura)
VALUES ('Montana3', 'Montana3', 4321.0);
INSERT INTO Montana (id_nombre, id_nombre_accidentes_geograficos, altura)
VALUES ('Montana4', 'Montana4', 7654.3);
INSERT INTO Montana (id_nombre, id_nombre_accidentes_geograficos, altura)
VALUES ('Montana5', 'Montana5', 1234.5);
INSERT INTO Montana (id_nombre, id_nombre_accidentes_geograficos, altura)
VALUES ('Montana6', 'Montana6', 6543.2);
INSERT INTO Montana (id_nombre, id_nombre_accidentes_geograficos, altura)
VALUES ('Montana7', 'Montana7', 987.6);
INSERT INTO Montana (id_nombre, id_nombre_accidentes_geograficos, altura)
VALUES ('Montana8', 'Montana8', 3456.7);
INSERT INTO Montana (id_nombre, id_nombre_accidentes_geograficos, altura)
VALUES ('Montana9', 'Montana9', 567.8);
INSERT INTO Montana (id_nombre, id_nombre_accidentes_geograficos, altura)
VALUES ('Montana10', 'Montana10', 8765.4);

INSERT INTO Pais (id_nombre, extension, poblacion)
VALUES ('Pais1', 12345.67, 10000000);
INSERT INTO Pais (id_nombre, extension, poblacion)
VALUES ('Pais2', 54321.0, 5000000);
INSERT INTO Pais (id_nombre, extension, poblacion)
VALUES ('Pais3', 9876.54, 3000000);
INSERT INTO Pais (id_nombre, extension, poblacion)
VALUES ('Pais4', 1234.56, 8000000);
INSERT INTO Pais (id_nombre, extension, poblacion)
VALUES ('Pais5', 6543.21, 6000000);
INSERT INTO Pais (id_nombre, extension, poblacion)
VALUES ('Pais6', 5678.90, 7000000);
INSERT INTO Pais (id_nombre, extension, poblacion)
VALUES ('Pais7', 8901.23, 2000000);
INSERT INTO Pais (id_nombre, extension, poblacion)
VALUES ('Pais8', 4321.0, 9000000);
INSERT INTO Pais (id_nombre, extension, poblacion)
VALUES ('Pais9', 654.32, 4000000);
INSERT INTO Pais (id_nombre, extension, poblacion)
VALUES ('Pais10', 987.65, 6000000);

INSERT INTO Localidad (id_nombre, id_pais)
VALUES ('Localidad1', 'Pais1');
INSERT INTO Localidad (id_nombre, id_pais)
VALUES ('Localidad2', 'Pais2');
INSERT INTO Localidad (id_nombre, id_pais)
VALUES ('Localidad3', 'Pais3');
INSERT INTO Localidad (id_nombre, id_pais)
VALUES ('Localidad4', 'Pais4');
INSERT INTO Localidad (id_nombre, id_pais)
VALUES ('Localidad5', 'Pais5');
INSERT INTO Localidad (id_nombre, id_pais)
VALUES ('Localidad6', 'Pais6');
INSERT INTO Localidad (id_nombre, id_pais)
VALUES ('Localidad7', 'Pais7');
INSERT INTO Localidad (id_nombre, id_pais)
VALUES ('Localidad8', 'Pais8');
INSERT INTO Localidad (id_nombre, id_pais)
VALUES ('Localidad9', 'Pais9');
INSERT INTO Localidad (id_nombre, id_pais)
VALUES ('Localidad10', 'Pais10');

INSERT INTO Pasa (id_nombre_rio, id_nombre_localidad)
VALUES ('Rio1', 'Localidad1');
INSERT INTO Pasa (id_nombre_rio, id_nombre_localidad)
VALUES ('Rio2', 'Localidad2');
INSERT INTO Pasa (id_nombre_rio, id_nombre_localidad)
VALUES ('Rio3', 'Localidad3');
INSERT INTO Pasa (id_nombre_rio, id_nombre_localidad)
VALUES ('Rio4', 'Localidad4');
INSERT INTO Pasa (id_nombre_rio, id_nombre_localidad)
VALUES ('Rio5', 'Localidad5');
INSERT INTO Pasa (id_nombre_rio, id_nombre_localidad)
VALUES ('Rio6', 'Localidad6');
INSERT INTO Pasa (id_nombre_rio, id_nombre_localidad)
VALUES ('Rio7', 'Localidad7');
INSERT INTO Pasa (id_nombre_rio, id_nombre_localidad)
VALUES ('Rio8', 'Localidad8');
INSERT INTO Pasa (id_nombre_rio, id_nombre_localidad)
VALUES ('Rio9', 'Localidad9');
INSERT INTO Pasa (id_nombre_rio, id_nombre_localidad)
VALUES ('Rio10', 'Localidad10');

INSERT INTO Encuentra (id_nombre, fk_id_nombre_pais)
VALUES ('Encuentra1', 'Pais1');
INSERT INTO Encuentra (id_nombre, fk_id_nombre_pais)
VALUES ('Encuentra2', 'Pais2');
INSERT INTO Encuentra (id_nombre, fk_id_nombre_pais)
VALUES ('Encuentra3', 'Pais3');
INSERT INTO Encuentra (id_nombre, fk_id_nombre_pais)
VALUES ('Encuentra4', 'Pais4');
INSERT INTO Encuentra (id_nombre, fk_id_nombre_pais)
VALUES ('Encuentra5', 'Pais5');
INSERT INTO Encuentra (id_nombre, fk_id_nombre_pais)
VALUES ('Encuentra6', 'Pais6');
INSERT INTO Encuentra (id_nombre, fk_id_nombre_pais)
VALUES ('Encuentra7', 'Pais7');
INSERT INTO Encuentra (id_nombre, fk_id_nombre_pais)
VALUES ('Encuentra8', 'Pais8');
INSERT INTO Encuentra (id_nombre, fk_id_nombre_pais)
VALUES ('Encuentra9', 'Pais9');
INSERT INTO Encuentra (id_nombre, fk_id_nombre_pais)
VALUES ('Encuentra10', 'Pais10');

UPDATE AccidentesGeograficos SET posicion_horizontal = 36.1068, posicion_vertical = 112.1370
WHERE id_nombre = 'Volcan';
UPDATE AccidentesGeograficos SET posicion_horizontal = 36.1068, posicion_vertical = 112.1370
WHERE id_nombre = 'Cima';
DELETE FROM AccidentesGeograficos WHERE id_nombre = 'Volcan';
DELETE FROM AccidentesGeograficos WHERE id_nombre = 'Cima';

UPDATE Rio SET longitud = 7000.0 WHERE id_nombre = 'Rio1';
UPDATE Rio SET longitud = 3000.0 WHERE id_nombre = 'Rio2';
DELETE FROM Rio WHERE id_nombre = 'Rio1';
DELETE FROM Rio WHERE id_nombre = 'Rio2';

UPDATE Lago SET extension = 9876.54 WHERE id_nombre = 'Lago1';
UPDATE Lago SET extension = 1234.56 WHERE id_nombre = 'Lago2';
DELETE FROM Lago WHERE id_nombre = 'Lago3';
DELETE FROM Lago WHERE id_nombre = 'Lago4';

UPDATE Montana SET altura = 9876.5 WHERE id_nombre = 'Montana1';
UPDATE Montana SET altura = 1234.5 WHERE id_nombre = 'Montana2';
DELETE FROM Montana WHERE id_nombre = 'Montana3';
DELETE FROM Montana WHERE id_nombre = 'Montana4';

UPDATE Pais SET extension = 9876.54, poblacion = 15000000 WHERE id_nombre = 'Pais1';
UPDATE Pais SET extension = 5432.1, poblacion = 3000000 WHERE id_nombre = 'Pais2';
DELETE FROM Pais WHERE id_nombre = 'Pais3';
DELETE FROM Pais WHERE id_nombre = 'Pais4';

UPDATE Localidad SET id_pais = 'Pais1' WHERE id_nombre = 'Localidad1';
UPDATE Localidad SET id_pais = 'Pais2' WHERE id_nombre = 'Localidad2';
DELETE FROM Localidad WHERE id_nombre = 'Localidad3';
DELETE FROM Localidad WHERE id_nombre = 'Localidad4';

UPDATE Pasa SET id_nombre_rio = 'Rio11' WHERE id_nombre_rio = 'Rio1';
UPDATE Pasa SET id_nombre_localidad = 'Loca' WHERE id_nombre_localidad = 'Localidad1';
DELETE FROM Pasa WHERE id_nombre_rio = 'Rio2';
DELETE FROM Pasa WHERE id_nombre_localidad = 'Localidad2';

UPDATE Encuentra SET fk_id_nombre_pais = 'Pais55' WHERE id_nombre = 'Encuentra1';
UPDATE Encuentra SET fk_id_nombre_pais = 'Pais56' WHERE id_nombre = 'Encuentra2';
DELETE FROM Encuentra WHERE id_nombre = 'Encuentra3';
DELETE FROM Encuentra WHERE id_nombre = 'Encuentra4';