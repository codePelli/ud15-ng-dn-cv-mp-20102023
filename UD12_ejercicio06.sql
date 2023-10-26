drop database if exists ejercicio06_15;
create database if not exists ejercicio06_15;
use ejercicio06_15;

create table if not exists Socio (
	DNI varchar(10) PRIMARY KEY,
    nombre varchar(255),
    apellidos varchar(255),
    codigo_socio int,
    direccion varchar(255),
    telefono varchar(15)
);

create table if not exists Articulo (
	codigo_articulo int PRIMARY KEY auto_increment,
    nombre varchar(255),
    año int,
    resumen text,
    comentario text,
    deteriorado boolean
);

create table if not exists Prestamo(
	fk_DNI varchar(10),
    fk_codigo_articulo INT,
    fecha_inicio date,
    fecha_fin date,
    fecha_devolucion date,
    primary key(fk_DNI, fk_codigo_articulo),
    foreign key (fk_DNI) REFERENCES Socio(DNI)
    ON DELETE CASCADE ON UPDATE CASCADE,
    foreign key (fk_codigo_articulo) references Articulo(codigo_articulo)
    ON DELETE CASCADE ON UPDATE CASCADE
);

create table if not exists Libro(
	codigo_libro varchar(10) primary key,
    fk_codigo_articulo INT,
    escritor varchar(255),
    num_paginas int,
    foreign key (fk_codigo_articulo) references Articulo(codigo_articulo)
    ON DELETE CASCADE ON UPDATE CASCADE
);

create table if not exists CD(
	codigo_cd int primary key,
    fk_codigo_articulo INT,
    interprete varchar(255),
    num_canciones int,
    foreign key (fk_codigo_articulo) REFERENCES Articulo(codigo_articulo)
    ON DELETE CASCADE ON UPDATE CASCADE
);

create table if not exists Pelicula(
	codigo_pelicula int primary key,
    fk_codigo_articulo INT,
    director varchar(255),
    duracion int,
    foreign key (fk_codigo_articulo) REFERENCES Articulo(codigo_articulo)
    ON DELETE CASCADE ON UPDATE CASCADE
);

create table if not exists Autor(
	id_autor int primary key,
    fk_codigo_articulo INT,
    interprete varchar(255),
    num_canciones int,
    foreign key (fk_codigo_articulo) REFERENCES Articulo(codigo_articulo)
    ON DELETE CASCADE ON UPDATE CASCADE
);

create table if not exists Crea (
	fk_id_autor int,
    fk_codigo_articulo int,
    primary key (fk_id_autor, fk_codigo_articulo),
    foreign key (fk_id_autor) references Autor(id_autor)
    ON DELETE CASCADE ON UPDATE CASCADE,
    foreign key (fk_codigo_articulo) references Articulo (codigo_articulo)
    ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO Socio (DNI, nombre, apellidos, codigo_socio, direccion, telefono) VALUES ('1234567890', 'Juan', 'Perez', 1, 'Calle 123', '123456789');
INSERT INTO Socio (DNI, nombre, apellidos, codigo_socio, direccion, telefono) VALUES ('2345678901', 'Maria', 'Lopez', 2, 'Avenida 456', '234567890');
INSERT INTO Socio (DNI, nombre, apellidos, codigo_socio, direccion, telefono) VALUES ('3456789012', 'Pedro', 'Garcia', 3, 'Carrera 789', '345678901');
INSERT INTO Socio (DNI, nombre, apellidos, codigo_socio, direccion, telefono) VALUES ('4567890123', 'Laura', 'Martinez', 4, 'Plaza 012', '456789012');
INSERT INTO Socio (DNI, nombre, apellidos, codigo_socio, direccion, telefono) VALUES ('5678901234', 'Pablo', 'Sanchez', 5, 'Pasaje 345', '567890123');
INSERT INTO Socio (DNI, nombre, apellidos, codigo_socio, direccion, telefono) VALUES ('6789012345', 'Ana', 'Fernandez', 6, 'Ronda 678', '678901234');
INSERT INTO Socio (DNI, nombre, apellidos, codigo_socio, direccion, telefono) VALUES ('7890123456', 'Carlos', 'Rodriguez', 7, 'Camino 901', '789012345');
INSERT INTO Socio (DNI, nombre, apellidos, codigo_socio, direccion, telefono) VALUES ('8901234567', 'Sofia', 'Gomez', 8, 'Travesia 123', '890123456');
INSERT INTO Socio (DNI, nombre, apellidos, codigo_socio, direccion, telefono) VALUES ('9012345678', 'Luis', 'Diaz', 9, 'Autopista 234', '901234567');
INSERT INTO Socio (DNI, nombre, apellidos, codigo_socio, direccion, telefono) VALUES ('0123456789', 'Elena', 'Vazquez', 10, 'Carretera 567', '012345678');

INSERT INTO Articulo (nombre, año, resumen, comentario, deteriorado) VALUES ('Articulo 1', 2000, 'Resumen del articulo 1', 'Comentario sobre el articulo 1', 0);
INSERT INTO Articulo (nombre, año, resumen, comentario, deteriorado) VALUES ('Articulo 2', 2005, 'Resumen del articulo 2', 'Comentario sobre el articulo 2', 1);
INSERT INTO Articulo (nombre, año, resumen, comentario, deteriorado) VALUES ('Articulo 3', 2010, 'Resumen del articulo 3', 'Comentario sobre el articulo 3', 0);
INSERT INTO Articulo (nombre, año, resumen, comentario, deteriorado) VALUES ('Articulo 4', 2015, 'Resumen del articulo 4', 'Comentario sobre el articulo 4', 1);
INSERT INTO Articulo (nombre, año, resumen, comentario, deteriorado) VALUES ('Articulo 5', 2020, 'Resumen del articulo 5', 'Comentario sobre el articulo 5', 0);
INSERT INTO Articulo (nombre, año, resumen, comentario, deteriorado) VALUES ('Articulo 6', 2021, 'Resumen del articulo 6', 'Comentario sobre el articulo 6', 0);
INSERT INTO Articulo (nombre, año, resumen, comentario, deteriorado) VALUES ('Articulo 7', 2008, 'Resumen del articulo 7', 'Comentario sobre el articulo 7', 1);
INSERT INTO Articulo (nombre, año, resumen, comentario, deteriorado) VALUES ('Articulo 8', 2013, 'Resumen del articulo 8', 'Comentario sobre el articulo 8', 0);
INSERT INTO Articulo (nombre, año, resumen, comentario, deteriorado) VALUES ('Articulo 9', 2018, 'Resumen del articulo 9', 'Comentario sobre el articulo 9', 1);
INSERT INTO Articulo (nombre, año, resumen, comentario, deteriorado) VALUES ('Articulo 10', 2003, 'Resumen del articulo 10', 'Comentario sobre el articulo 10', 0);

INSERT INTO Prestamo (fk_DNI, fk_codigo_articulo, fecha_inicio, fecha_fin, fecha_devolucion) VALUES ('1234567890', 1, '2023-10-18', '2023-10-20', '2023-10-20');
INSERT INTO Prestamo (fk_DNI, fk_codigo_articulo, fecha_inicio, fecha_fin, fecha_devolucion) VALUES ('2345678901', 2, '2023-10-15', '2023-10-20', '2023-10-19');
INSERT INTO Prestamo (fk_DNI, fk_codigo_articulo, fecha_inicio, fecha_fin, fecha_devolucion) VALUES ('3456789012', 3, '2023-10-10', '2023-10-18', '2023-10-17');
INSERT INTO Prestamo (fk_DNI, fk_codigo_articulo, fecha_inicio, fecha_fin, fecha_devolucion) VALUES ('4567890123', 4, '2023-10-08', '2023-10-17', '2023-10-16');
INSERT INTO Prestamo (fk_DNI, fk_codigo_articulo, fecha_inicio, fecha_fin, fecha_devolucion) VALUES ('5678901234', 5, '2023-10-05', '2023-10-16', '2023-10-15');
INSERT INTO Prestamo (fk_DNI, fk_codigo_articulo, fecha_inicio, fecha_fin, fecha_devolucion) VALUES ('6789012345', 6, '2023-10-02', '2023-10-15', '2023-10-14');
INSERT INTO Prestamo (fk_DNI, fk_codigo_articulo, fecha_inicio, fecha_fin, fecha_devolucion) VALUES ('7890123456', 7, '2023-09-28', '2023-10-14', '2023-10-13');
INSERT INTO Prestamo (fk_DNI, fk_codigo_articulo, fecha_inicio, fecha_fin, fecha_devolucion) VALUES ('8901234567', 8, '2023-09-25', '2023-10-13', '2023-10-12');
INSERT INTO Prestamo (fk_DNI, fk_codigo_articulo, fecha_inicio, fecha_fin, fecha_devolucion) VALUES ('9012345678', 9, '2023-09-20', '2023-10-12', '2023-10-11');
INSERT INTO Prestamo (fk_DNI, fk_codigo_articulo, fecha_inicio, fecha_fin, fecha_devolucion) VALUES ('0123456789', 10, '2023-09-18', '2023-10-11', '2023-10-10');

INSERT INTO Libro (codigo_libro, fk_codigo_articulo, escritor, num_paginas) VALUES ('L1', 1, 'Autor1', 300);
INSERT INTO Libro (codigo_libro, fk_codigo_articulo, escritor, num_paginas) VALUES ('L2', 2, 'Autor2', 250);
INSERT INTO Libro (codigo_libro, fk_codigo_articulo, escritor, num_paginas) VALUES ('L3', 3, 'Autor3', 400);
INSERT INTO Libro (codigo_libro, fk_codigo_articulo, escritor, num_paginas) VALUES ('L4', 4, 'Autor4', 280);
INSERT INTO Libro (codigo_libro, fk_codigo_articulo, escritor, num_paginas) VALUES ('L5', 5, 'Autor5', 320);
INSERT INTO Libro (codigo_libro, fk_codigo_articulo, escritor, num_paginas) VALUES ('L6', 6, 'Autor6', 270);
INSERT INTO Libro (codigo_libro, fk_codigo_articulo, escritor, num_paginas) VALUES ('L7', 7, 'Autor7', 350);
INSERT INTO Libro (codigo_libro, fk_codigo_articulo, escritor, num_paginas) VALUES ('L8', 8, 'Autor8', 400);
INSERT INTO Libro (codigo_libro, fk_codigo_articulo, escritor, num_paginas) VALUES ('L9', 9, 'Autor9', 290);
INSERT INTO Libro (codigo_libro, fk_codigo_articulo, escritor, num_paginas) VALUES ('L10', 10, 'Autor10', 380);

INSERT INTO CD (codigo_cd, fk_codigo_articulo, interprete, num_canciones) VALUES (1, 1, 'Interprete1', 12);
INSERT INTO CD (codigo_cd, fk_codigo_articulo, interprete, num_canciones) VALUES (2, 2, 'Interprete2', 14);
INSERT INTO CD (codigo_cd, fk_codigo_articulo, interprete, num_canciones) VALUES (3, 3, 'Interprete3', 10);
INSERT INTO CD (codigo_cd, fk_codigo_articulo, interprete, num_canciones) VALUES (4, 4, 'Interprete4', 15);
INSERT INTO CD (codigo_cd, fk_codigo_articulo, interprete, num_canciones) VALUES (5, 5, 'Interprete5', 11);
INSERT INTO CD (codigo_cd, fk_codigo_articulo, interprete, num_canciones) VALUES (6, 6, 'Interprete6', 13);
INSERT INTO CD (codigo_cd, fk_codigo_articulo, interprete, num_canciones) VALUES (7, 7, 'Interprete7', 9);
INSERT INTO CD (codigo_cd, fk_codigo_articulo, interprete, num_canciones) VALUES (8, 8, 'Interprete8', 16);
INSERT INTO CD (codigo_cd, fk_codigo_articulo, interprete, num_canciones) VALUES (9, 9, 'Interprete9', 10);
INSERT INTO CD (codigo_cd, fk_codigo_articulo, interprete, num_canciones) VALUES (10, 10, 'Interprete10', 14);

INSERT INTO Pelicula (codigo_pelicula, fk_codigo_articulo, director, duracion) VALUES (1, 1, 'Director1', 120);
INSERT INTO Pelicula (codigo_pelicula, fk_codigo_articulo, director, duracion) VALUES (2, 2, 'Director2', 135);
INSERT INTO Pelicula (codigo_pelicula, fk_codigo_articulo, director, duracion) VALUES (3, 3, 'Director3', 110);
INSERT INTO Pelicula (codigo_pelicula, fk_codigo_articulo, director, duracion) VALUES (4, 4, 'Director4', 145);
INSERT INTO Pelicula (codigo_pelicula, fk_codigo_articulo, director, duracion) VALUES (5, 5, 'Director5', 130);
INSERT INTO Pelicula (codigo_pelicula, fk_codigo_articulo, director, duracion) VALUES (6, 6, 'Director6', 125);
INSERT INTO Pelicula (codigo_pelicula, fk_codigo_articulo, director, duracion) VALUES (7, 7, 'Director7', 140);
INSERT INTO Pelicula (codigo_pelicula, fk_codigo_articulo, director, duracion) VALUES (8, 8, 'Director8', 115);
INSERT INTO Pelicula (codigo_pelicula, fk_codigo_articulo, director, duracion) VALUES (9, 9, 'Director9', 125);
INSERT INTO Pelicula (codigo_pelicula, fk_codigo_articulo, director, duracion) VALUES (10, 10, 'Director10', 130);

INSERT INTO Autor (id_autor, fk_codigo_articulo, interprete, num_canciones) VALUES (1, 1, 'Interprete1', 10);
INSERT INTO Autor (id_autor, fk_codigo_articulo, interprete, num_canciones) VALUES (2, 2, 'Interprete2', 12);
INSERT INTO Autor (id_autor, fk_codigo_articulo, interprete, num_canciones) VALUES (3, 3, 'Interprete3', 9);
INSERT INTO Autor (id_autor, fk_codigo_articulo, interprete, num_canciones) VALUES (4, 4, 'Interprete4', 11);
INSERT INTO Autor (id_autor, fk_codigo_articulo, interprete, num_canciones) VALUES (5, 5, 'Interprete5', 14);
INSERT INTO Autor (id_autor, fk_codigo_articulo, interprete, num_canciones) VALUES (6, 6, 'Interprete6', 8);
INSERT INTO Autor (id_autor, fk_codigo_articulo, interprete, num_canciones) VALUES (7, 7, 'Interprete7', 15);
INSERT INTO Autor (id_autor, fk_codigo_articulo, interprete, num_canciones) VALUES (8, 8, 'Interprete8', 12);
INSERT INTO Autor (id_autor, fk_codigo_articulo, interprete, num_canciones) VALUES (9, 9, 'Interprete9', 11);
INSERT INTO Autor (id_autor, fk_codigo_articulo, interprete, num_canciones) VALUES (10, 10, 'Interprete10', 13);

INSERT INTO Crea (fk_id_autor, fk_codigo_articulo) VALUES (1, 1);
INSERT INTO Crea (fk_id_autor, fk_codigo_articulo) VALUES (2, 2);
INSERT INTO Crea (fk_id_autor, fk_codigo_articulo) VALUES (3, 3);
INSERT INTO Crea (fk_id_autor, fk_codigo_articulo) VALUES (4, 4);
INSERT INTO Crea (fk_id_autor, fk_codigo_articulo) VALUES (5, 5);
INSERT INTO Crea (fk_id_autor, fk_codigo_articulo) VALUES (6, 6);
INSERT INTO Crea (fk_id_autor, fk_codigo_articulo) VALUES (7, 7);
INSERT INTO Crea (fk_id_autor, fk_codigo_articulo) VALUES (8, 8);
INSERT INTO Crea (fk_id_autor, fk_codigo_articulo) VALUES (9, 9);
INSERT INTO Crea (fk_id_autor, fk_codigo_articulo) VALUES (10, 10);




UPDATE Socio SET direccion = 'Calle Nueva 456' WHERE DNI = '1234567890';
UPDATE Socio SET telefono = '111222333' WHERE DNI = '2345678901';
DELETE FROM Socio WHERE DNI = '3456789012';
DELETE FROM Socio WHERE DNI = '4567890123';

UPDATE Articulo SET año = 2022 WHERE codigo_articulo = 1;
UPDATE Articulo SET resumen = 'Nuevo resumen del articulo 2' WHERE codigo_articulo = 2;
DELETE FROM Articulo WHERE codigo_articulo = 3;
DELETE FROM Articulo WHERE codigo_articulo = 4;

UPDATE Prestamo SET fecha_fin = '2023-10-22' WHERE fk_DNI = '1234567890' AND fk_codigo_articulo = 1;
UPDATE Prestamo SET fecha_devolucion = '2023-10-21' WHERE fk_DNI = '0987654321' AND fk_codigo_articulo = 2;
DELETE FROM Prestamo WHERE fk_DNI = '1234509876' AND fk_codigo_articulo = 3;
DELETE FROM Prestamo WHERE fk_DNI = '5432167890' AND fk_codigo_articulo = 4;

UPDATE Libro SET num_paginas = 320 WHERE codigo_libro = 'L1';
UPDATE Libro SET escritor = 'Autor1 Modificado' WHERE codigo_libro = 'L2';
DELETE FROM Libro WHERE codigo_libro = 'L3';
DELETE FROM Libro WHERE codigo_libro = 'L4';

UPDATE CD SET interprete = 'Interprete1 Modificado' WHERE codigo_cd = 1;
UPDATE CD SET num_canciones = 16 WHERE codigo_cd = 2;
DELETE FROM CD WHERE codigo_cd = 3;
DELETE FROM CD WHERE codigo_cd = 4;

UPDATE Pelicula SET director = 'Director1 Modificado' WHERE codigo_pelicula = 1;
UPDATE Pelicula SET duracion = 150 WHERE codigo_pelicula = 2;
DELETE FROM Pelicula WHERE codigo_pelicula = 3;
DELETE FROM Pelicula WHERE codigo_pelicula = 4;

UPDATE Autor SET interprete = 'Interprete1 Modificado' WHERE id_autor = 1;
UPDATE Autor SET num_canciones = 20 WHERE id_autor = 2;
DELETE FROM Autor WHERE id_autor = 3;
DELETE FROM Autor WHERE id_autor = 4;

UPDATE Crea SET fk_id_autor = 11 WHERE fk_id_autor = 11;
UPDATE Crea SET fk_codigo_articulo = 11 WHERE fk_codigo_articulo =11;
DELETE FROM Crea WHERE fk_id_autor = 3;
DELETE FROM Crea WHERE fk_codigo_articulo = 4;