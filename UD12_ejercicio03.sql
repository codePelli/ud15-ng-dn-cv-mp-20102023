drop database if exists ejercicio03_15;
create database if not exists ejercicio03_15;
use ejercicio03_15;

create table if not exists ComunidadAutonoma (
	nombre varchar(255) primary key unique,
    poblacion int,
    superficie double
);

create table if not exists Provincia (
	cod_postal int primary key ,
    fk_nombre_ca varchar(255),
    nombre varchar(255),
	foreign key (fk_nombre_ca) references ComunidadAutonoma(nombre)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

create table if not exists Localidad (
	id_localidad int primary key auto_increment,
    fk_cod_postal int,
    fk_nombre_ca varchar(255),
    nombre varchar(255),
    poblacion int,
    foreign key (fk_cod_postal) references Provincia(cod_postal),
    foreign key (fk_nombre_ca) references ComunidadAutonoma(nombre)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

INSERT INTO ComunidadAutonoma (nombre, poblacion, superficie) VALUES ('Andalucia', 8446561, 87599.0);
INSERT INTO ComunidadAutonoma (nombre, poblacion, superficie) VALUES ('Catalunya', 7611107, 32363.0);
INSERT INTO ComunidadAutonoma (nombre, poblacion, superficie) VALUES ('Comunidad de Madrid', 6663394, 8028.0);
INSERT INTO ComunidadAutonoma (nombre, poblacion, superficie) VALUES ('Comunidad Valenciana', 5003769, 23255.0);
INSERT INTO ComunidadAutonoma (nombre, poblacion, superficie) VALUES ('Galicia', 2698764, 29574.0);
INSERT INTO ComunidadAutonoma (nombre, poblacion, superficie) VALUES ('Aragon', 1319291, 47720.0);
INSERT INTO ComunidadAutonoma (nombre, poblacion, superficie) VALUES ('Principado de Asturias', 1022293, 10604.0);
INSERT INTO ComunidadAutonoma (nombre, poblacion, superficie) VALUES ('Islas Baleares', 1187803, 4992.0);
INSERT INTO ComunidadAutonoma (nombre, poblacion, superficie) VALUES ('Canarias', 2153389, 7447.0);
INSERT INTO ComunidadAutonoma (nombre, poblacion, superficie) VALUES ('Cantabria', 581078, 5320.0);

INSERT INTO Provincia (cod_postal, fk_nombre_ca, nombre) VALUES (41001, 'Andalucia', 'Sevilla');
INSERT INTO Provincia (cod_postal, fk_nombre_ca, nombre) VALUES (28001, 'Comunidad de Madrid', 'Madrid');
INSERT INTO Provincia (cod_postal, fk_nombre_ca, nombre) VALUES (43001, 'Catalunya', 'Tarragona');
INSERT INTO Provincia (cod_postal, fk_nombre_ca, nombre) VALUES (46001, 'Comunidad Valenciana', 'Valencia');
INSERT INTO Provincia (cod_postal, fk_nombre_ca, nombre) VALUES (15001, 'Galicia', 'La Coruna');
INSERT INTO Provincia (cod_postal, fk_nombre_ca, nombre) VALUES (50001, 'Aragon', 'Zaragoza');
INSERT INTO Provincia (cod_postal, fk_nombre_ca, nombre) VALUES (33001, 'Principado de Asturias', 'Oviedo');
INSERT INTO Provincia (cod_postal, fk_nombre_ca, nombre) VALUES (07001, 'Islas Baleares', 'Palma');
INSERT INTO Provincia (cod_postal, fk_nombre_ca, nombre) VALUES (35001, 'Canarias', 'Las Palmas');
INSERT INTO Provincia (cod_postal, fk_nombre_ca, nombre) VALUES (39001, 'Cantabria', 'Santander');

INSERT INTO Localidad (fk_cod_postal, fk_nombre_ca, nombre, poblacion) VALUES (41001, 'Andalucia', 'Sevilla', 690566);
INSERT INTO Localidad (fk_cod_postal, fk_nombre_ca, nombre, poblacion) VALUES (28001, 'Comunidad de Madrid', 'Madrid', 3348536);
INSERT INTO Localidad (fk_cod_postal, fk_nombre_ca, nombre, poblacion) VALUES (43001, 'Catalunya', 'Tarragona', 132199);
INSERT INTO Localidad (fk_cod_postal, fk_nombre_ca, nombre, poblacion) VALUES (46001, 'Comunidad Valenciana', 'Valencia', 791413);
INSERT INTO Localidad (fk_cod_postal, fk_nombre_ca, nombre, poblacion) VALUES (15001, 'Galicia', 'La Coruna', 243269);
INSERT INTO Localidad (fk_cod_postal, fk_nombre_ca, nombre, poblacion) VALUES (50001, 'Aragon', 'Zaragoza', 674997);
INSERT INTO Localidad (fk_cod_postal, fk_nombre_ca, nombre, poblacion) VALUES (33001, 'Principado de Asturias', 'Oviedo', 201681);
INSERT INTO Localidad (fk_cod_postal, fk_nombre_ca, nombre, poblacion) VALUES (07001, 'Islas Baleares', 'Palma', 409661);
INSERT INTO Localidad (fk_cod_postal, fk_nombre_ca, nombre, poblacion) VALUES (35001, 'Canarias', 'Las Palmas', 380000);
INSERT INTO Localidad (fk_cod_postal, fk_nombre_ca, nombre, poblacion) VALUES (39001, 'Cantabria', 'Santander', 172539);


UPDATE ComunidadAutonoma SET poblacion = 8500000 WHERE nombre = 'Catalunya';
UPDATE ComunidadAutonoma SET superficie = 10000.0 WHERE nombre = 'Comunidad Valenciana';
DELETE FROM ComunidadAutonoma WHERE nombre = 'Islas Baleares';
DELETE FROM ComunidadAutonoma WHERE nombre = 'Canarias';

UPDATE Provincia SET nombre = 'Barcelona' WHERE cod_postal = 43001;
UPDATE Provincia SET fk_nombre_ca = 'Catalunya' WHERE nombre = 'La Coruna';
DELETE FROM Provincia WHERE cod_postal = 07001;
DELETE FROM Provincia WHERE nombre = 'Canarias';

UPDATE Localidad SET poblacion = 700000 WHERE id_localidad = 1;
UPDATE Localidad SET nombre = 'Gijon' WHERE id_localidad = 7;
DELETE FROM Localidad WHERE id_localidad = 8;
DELETE FROM Localidad WHERE nombre = 'Zaragoza';


