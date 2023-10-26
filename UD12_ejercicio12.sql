drop database if exists ejercicio12;
create database if not exists ejercicio12;
use ejercicio12;

create table if not exists Proyecto (
    id_proyecto int primary key auto_increment,
    fecha_inicio date,
    fecha_prevision_fin date,
    fecha_real_fin date
);


create table if not exists Empresa (
    cod_interno int primary key auto_increment,
    CIF varchar(20),
    nombre varchar(255),
    direccion varchar(255),
    telefono varchar(15),
    fk_id_proyecto_realiza int,
    fk_id_proyecto_pertenece int,
    foreign key (fk_id_proyecto_realiza) REFERENCES Proyecto(id_proyecto)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
    foreign key (fk_id_proyecto_pertenece) references Proyecto(id_proyecto)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);


create table if not exists Trabajador (
    id_trabajador int primary key auto_increment,
    DNI varchar(10),
    nombre varchar(255),
    apellidos varchar(255),
    profesion varchar(255)
);

create table if not exists Participan (
    fk_id_proyecto int,
    fk_id_trabajador int,
    cargo_ejecutado varchar(255),
    horas_trabajadas int,
    primary key(fk_id_proyecto, fk_id_trabajador),
    foreign key (fk_id_proyecto) references Proyecto(id_proyecto)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
    foreign key (fk_id_trabajador) references Trabajador(id_trabajador)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

INSERT INTO Proyecto (fecha_inicio, fecha_prevision_fin, fecha_real_fin)
VALUES
    ('2023-01-01', '2023-02-28', '2023-02-15'),
    ('2023-02-15', '2023-04-30', NULL),
    ('2023-03-01', '2023-05-31', NULL),
    ('2023-04-01', '2023-06-30', NULL),
    ('2023-05-01', '2023-07-31', NULL),
    ('2023-06-01', '2023-08-31', NULL),
    ('2023-07-01', '2023-09-30', NULL),
    ('2023-08-01', '2023-10-31', NULL),
    ('2023-09-01', '2023-11-30', NULL),
    ('2023-10-01', '2023-12-31', NULL);

INSERT INTO Empresa (CIF, nombre, direccion, telefono, fk_id_proyecto_realiza, fk_id_proyecto_pertenece)
VALUES
    ('12345A', 'Empresa A', 'Dirección A', '123-456-7890', 1, 1),
    ('67890B', 'Empresa B', 'Dirección B', '987-654-3210', 2, 2),
    ('54321C', 'Empresa C', 'Dirección C', '555-555-5555', 3, 3),
    ('11111D', 'Empresa D', 'Dirección D', '111-222-3333', 4, 4),
    ('99999E', 'Empresa E', 'Dirección E', '777-888-9999', 5, 5),
    ('44444F', 'Empresa F', 'Dirección F', '444-444-4444', 6, 6),
    ('22222G', 'Empresa G', 'Dirección G', '123-987-6543', 7, 7),
    ('55555H', 'Empresa H', 'Dirección H', '543-210-9876', 8, 8),
    ('77777I', 'Empresa I', 'Dirección I', '987-123-4567', 9, 9),
    ('88888J', 'Empresa J', 'Dirección J', '777-123-5555', 10, 10);

INSERT INTO Trabajador (DNI, nombre, apellidos, profesion)
VALUES
    ('A1234567X', 'Juan', 'Pérez', 'Ingeniero'),
    ('B2345678Y', 'María', 'López', 'Arquitecto'),
    ('C3456789Z', 'Carlos', 'García', 'Diseñador'),
    ('D4567890A', 'Laura', 'Fernández', 'Programador'),
    ('E5678901B', 'Pedro', 'Martínez', 'Ingeniero'),
    ('F6789012C', 'Ana', 'Gómez', 'Arquitecto'),
    ('G7890123D', 'Miguel', 'Rodríguez', 'Diseñador'),
    ('H8901234E', 'Isabel', 'Sánchez', 'Programador'),
    ('I9012345F', 'Luis', 'Ramírez', 'Ingeniero'),
    ('J0123456G', 'Carmen', 'Torres', 'Arquitecto');

INSERT INTO Participan (fk_id_proyecto, fk_id_trabajador, cargo_ejecutado, horas_trabajadas)
VALUES
    (1, 1, 'Project Manager', 40),
    (1, 2, 'Arquitecto', 35),
    (2, 3, 'Diseñador Gráfico', 30),
    (2, 4, 'Programador', 25),
    (3, 5, 'Ingeniero de Software', 30),
    (3, 6, 'Arquitecto', 35),
    (4, 7, 'Diseñador Industrial', 30),
    (4, 8, 'Programador', 25),
    (5, 9, 'Ingeniero Civil', 30),
    (5, 10, 'Arquitecto', 35);

UPDATE Proyecto SET fecha_real_fin = '2023-02-28' WHERE id_proyecto = 2;
UPDATE Proyecto SET fecha_real_fin = '2023-03-15' WHERE id_proyecto = 3;
DELETE FROM Proyecto WHERE id_proyecto = 4;
DELETE FROM Proyecto WHERE id_proyecto = 5;

DELETE FROM Empresa WHERE cod_interno = 9;
DELETE FROM Empresa WHERE cod_interno = 10;
UPDATE Empresa SET telefono = '999-999-9999' WHERE cod_interno = 1;
UPDATE Empresa SET direccion = 'Nueva Dirección' WHERE cod_interno = 2;

UPDATE Trabajador SET profesion = 'Ingeniero de Software' WHERE id_trabajador = 1;
UPDATE Trabajador SET apellidos = 'García Pérez' WHERE id_trabajador = 2;
DELETE FROM Trabajador WHERE id_trabajador = 3;
DELETE FROM Trabajador WHERE id_trabajador = 4;

UPDATE Participan SET horas_trabajadas = 45 WHERE fk_id_proyecto = 1 AND fk_id_trabajador = 1;
UPDATE Participan SET cargo_ejecutado = 'Diseñador de Interfaz' WHERE fk_id_proyecto = 2 AND fk_id_trabajador = 3;
DELETE FROM Participan WHERE fk_id_proyecto = 3 AND fk_id_trabajador = 5;
DELETE FROM Participan WHERE fk_id_proyecto = 4 AND fk_id_trabajador = 7;