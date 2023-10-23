drop database if exists ejercicio04_15;
create database if not exists ejercicio04_15;
use ejercicio04_15;

create table if not exists Guerra (
	id_guerra int primary key,
    año_inicio DATE,
    año_fin DATE,
    nombre varchar(255)
);

create table if not exists Bando (
	id_bando int primary key,
    nombre varchar(255),
    ganadores varchar(255)
);

create table if not exists Pais (
	id_pais int primary key auto_increment,
    fk_id_bando int,
    nombre varchar(255),
    periodo_independencia varchar(255),
    foreign key (fk_id_bando) references Bando(id_bando)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

create table if not exists Periodo (
	id_periodo int primary key,
    fk_id_pais int,
    fecha_inicio DATE,
    fecha_fin DATE,
    foreign key (fk_id_pais) references Pais(id_pais)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);


INSERT INTO Guerra (id_guerra, año_inicio, año_fin, nombre) VALUES (1, '1939-09-01', '1945-09-02', 'Segunda Guerra Mundial');
INSERT INTO Guerra (id_guerra, año_inicio, año_fin, nombre) VALUES (2, '1914-07-28', '1918-11-11', 'Primera Guerra Mundial');
INSERT INTO Guerra (id_guerra, año_inicio, año_fin, nombre) VALUES (3, '1950-06-25', '1953-07-27', 'Guerra de Corea');
INSERT INTO Guerra (id_guerra, año_inicio, año_fin, nombre) VALUES (4, '1936-07-17', '1939-04-01', 'Guerra Civil Española');
INSERT INTO Guerra (id_guerra, año_inicio, año_fin, nombre) VALUES (5, '1961-01-01', '1975-04-30', 'Guerra de Vietnam');
INSERT INTO Guerra (id_guerra, año_inicio, año_fin, nombre) VALUES (6, '2001-10-07', '2021-08-30', 'Guerra contra el terrorismo');
INSERT INTO Guerra (id_guerra, año_inicio, año_fin, nombre) VALUES (7, '1990-08-02', '1991-02-28', 'Guerra del Golfo');
INSERT INTO Guerra (id_guerra, año_inicio, año_fin, nombre) VALUES (8, '1899-10-11', '1902-12-02', 'Guerra filipino-estadounidense');
INSERT INTO Guerra (id_guerra, año_inicio, año_fin, nombre) VALUES (9, '1870-07-19', '1871-05-10', 'Guerra franco-prusiana');
INSERT INTO Guerra (id_guerra, año_inicio, año_fin, nombre) VALUES (10, '1948-05-14', '1949-07-20', 'Guerra arabe-israeli de 1948');

INSERT INTO Bando (id_bando, nombre, ganadores) VALUES (1, 'Aliados', 'Estados Unidos, Reino Unido, Union Sovietica');
INSERT INTO Bando (id_bando, nombre, ganadores) VALUES (2, 'Eje', 'Alemania, Italia, Japon');
INSERT INTO Bando (id_bando, nombre, ganadores) VALUES (3, 'Triple Entente', 'Francia, Reino Unido, Rusia');
INSERT INTO Bando (id_bando, nombre, ganadores) VALUES (4, 'Triple Alianza', 'Alemania, Austria-Hungria, Italia');
INSERT INTO Bando (id_bando, nombre, ganadores) VALUES (5, 'Corea del Sur', 'Naciones Unidas');
INSERT INTO Bando (id_bando, nombre, ganadores) VALUES (6, 'Corea del Norte', 'China, Union Sovietica');
INSERT INTO Bando (id_bando, nombre, ganadores) VALUES (7, 'Nacionalistas', 'Espana');
INSERT INTO Bando (id_bando, nombre, ganadores) VALUES (8, 'Republicanos', 'Espana');
INSERT INTO Bando (id_bando, nombre, ganadores) VALUES (9, 'Vietnam del Norte', 'Vietnam del Norte');
INSERT INTO Bando (id_bando, nombre, ganadores) VALUES (10, 'Vietnam del Sur', 'Vietnam del Sur');

INSERT INTO Pais (fk_id_bando, nombre, periodo_independencia) VALUES (1, 'Estados Unidos', '1776-07-04');
INSERT INTO Pais (fk_id_bando, nombre, periodo_independencia) VALUES (2, 'Alemania', '1871-01-18');
INSERT INTO Pais (fk_id_bando, nombre, periodo_independencia) VALUES (3, 'Francia', '1798-11-09');
INSERT INTO Pais (fk_id_bando, nombre, periodo_independencia) VALUES (4, 'Italia', '1861-03-17');
INSERT INTO Pais (fk_id_bando, nombre, periodo_independencia) VALUES (5, 'Corea del Norte', '1948-09-09');
INSERT INTO Pais (fk_id_bando, nombre, periodo_independencia) VALUES (6, 'Corea del Sur', '1948-08-15');
INSERT INTO Pais (fk_id_bando, nombre, periodo_independencia) VALUES (7, 'Espana', '1812-05-05');
INSERT INTO Pais (fk_id_bando, nombre, periodo_independencia) VALUES (8, 'Vietnam del Norte', '1945-09-02');
INSERT INTO Pais (fk_id_bando, nombre, periodo_independencia) VALUES (9, 'Vietnam del Sur', '1949-01-05');
INSERT INTO Pais (fk_id_bando, nombre, periodo_independencia) VALUES (10, 'Union Sovietica', '1922-12-30');

INSERT INTO Periodo (id_periodo, fk_id_pais, fecha_inicio, fecha_fin) VALUES (1, 1, '1941-12-07', '1945-09-02');
INSERT INTO Periodo (id_periodo, fk_id_pais, fecha_inicio, fecha_fin) VALUES (2, 2, '1914-07-28', '1918-11-11');
INSERT INTO Periodo (id_periodo, fk_id_pais, fecha_inicio, fecha_fin) VALUES (3, 3, '1950-06-25', '1953-07-27');
INSERT INTO Periodo (id_periodo, fk_id_pais, fecha_inicio, fecha_fin) VALUES (4, 4, '1936-07-17', '1939-04-01');
INSERT INTO Periodo (id_periodo, fk_id_pais, fecha_inicio, fecha_fin) VALUES (5, 5, '1961-01-01', '1975-04-30');
INSERT INTO Periodo (id_periodo, fk_id_pais, fecha_inicio, fecha_fin) VALUES (6, 6, '2001-10-07', '2021-08-30');
INSERT INTO Periodo (id_periodo, fk_id_pais, fecha_inicio, fecha_fin) VALUES (7, 7, '1990-08-02', '1991-02-28');
INSERT INTO Periodo (id_periodo, fk_id_pais, fecha_inicio, fecha_fin) VALUES (8, 8, '1899-10-11', '1902-12-02');
INSERT INTO Periodo (id_periodo, fk_id_pais, fecha_inicio, fecha_fin) VALUES (9, 9, '1870-07-19', '1871-05-10');
INSERT INTO Periodo (id_periodo, fk_id_pais, fecha_inicio, fecha_fin) VALUES (10, 10, '1948-05-14', '1949-07-20');


UPDATE Guerra SET nombre = 'Guerra Civil de Siria' WHERE id_guerra = 6;
UPDATE Guerra SET año_inicio = '1939-09-03' WHERE id_guerra = 1;
DELETE FROM Guerra WHERE id_guerra = 9;
DELETE FROM Guerra WHERE id_guerra = 10;

UPDATE Bando SET ganadores = 'Estados Unidos, Reino Unido, Francia, Union Sovietica' WHERE id_bando = 1;
UPDATE Bando SET nombre = 'Eje 2' WHERE id_bando = 2;
DELETE FROM Bando WHERE id_bando = 9;
DELETE FROM Bando WHERE id_bando = 10;

UPDATE Pais SET periodo_independencia = '1945-08-15' WHERE id_pais = 6;
UPDATE Pais SET nombre = 'Nueva Espana' WHERE id_pais = 7;
DELETE FROM Pais WHERE id_pais = 9;
DELETE FROM Pais WHERE id_pais = 10;

UPDATE Periodo SET fecha_inicio = '1945-09-03' WHERE id_periodo = 1;
UPDATE Periodo SET fecha_fin = '1902-12-03' WHERE id_periodo = 8;
DELETE FROM Periodo WHERE id_periodo = 9;
DELETE FROM Periodo WHERE id_periodo = 10;




