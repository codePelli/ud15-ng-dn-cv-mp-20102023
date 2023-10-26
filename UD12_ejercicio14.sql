drop database if exists ejercicio14;
create database if not exists ejercicio14;
use ejercicio14;

create table if not exists Usuario (
	id_usuario int PRIMARY KEY,
    contrasena varchar(40),
    nombre varchar(40),
    apellidos varchar(40),
    direccion varchar(40),
   telefono varchar(15),
    email varchar(40),
    es_celebridad boolean
);

create table if not exists Celebridad(
	id_celebridad varchar(40) PRIMARY KEY,
    contrasena varchar(40),
    nombre varchar(40),
    apellidos varchar(40),
    id_usuario int,
    foto text,
    foreign key (id_usuario) REFERENCES Usuario(id_usuario)
);

create table if not exists Contacto (
	telefono varchar(15) PRIMARY KEY,
	descripcion text
);

create table if not exists Tiene (
	id_usuario int,
    telefono varchar(15),
    foreign key (id_usuario) REFERENCES Usuario(id_usuario),
    foreign key (telefono) REFERENCES Contacto(telefono)
);

create table if not exists Grupo (
	nombre varchar(255) PRIMARY KEY
);

create table if not exists Organiza (
	telefono varchar(15),
    nombre varchar(255),
	foreign key (telefono) REFERENCES Contacto(telefono),
    foreign key (nombre) REFERENCES Grupo(nombre)
);

create table if not exists Comentario (
	usuario varchar(255) PRIMARY KEY,
	texto text,
    imagen varchar(255)
);

create table if not exists Publica (
	id_usuario int,
    usuario varchar(255),
	foreign key (id_usuario) REFERENCES Usuario(id_usuario),
    foreign key (usuario) REFERENCES Comentario(usuario)
);



INSERT INTO Usuario (id_usuario, contrasena, nombre, apellidos, direccion, telefono, email, es_celebridad)VALUES (1, 'pass123', 'Juan', 'Perez', 'Calle Mayor 123', '123456789', 'juanperez@example.com', false);
INSERT INTO Usuario (id_usuario, contrasena, nombre, apellidos, direccion, telefono, email, es_celebridad)VALUES (2, 'password456', 'Maria', 'Gonzalez', 'Avenida Principal 456', '987654321', 'mariagonzalez@example.com', true);
INSERT INTO Usuario (id_usuario, contrasena, nombre, apellidos, direccion, telefono, email, es_celebridad)VALUES (3, 'abc123', 'Pedro', 'Lopez', 'Calle Secundaria 789', '567891234', 'pedrolopez@example.com', false);
INSERT INTO Usuario (id_usuario, contrasena, nombre, apellidos, direccion, telefono, email, es_celebridad)VALUES (4, 'qwerty', 'Laura', 'Sanchez', 'Avenida Norte 567', '234567890', 'laurasanchez@example.com', true);
INSERT INTO Usuario (id_usuario, contrasena, nombre, apellidos, direccion, telefono, email, es_celebridad)VALUES (5, 'pass1234', 'Carlos', 'Martin', 'Calle Sur 234', '345678901', 'carlosmartin@example.com', false);
INSERT INTO Usuario (id_usuario, contrasena, nombre, apellidos, direccion, telefono, email, es_celebridad)VALUES (6, 'password6', 'Jessica', 'Brown', '234 Maple Ave', '6789012345', 'jessica.brown@example.com', true);
INSERT INTO Usuario (id_usuario, contrasena, nombre, apellidos, direccion, telefono, email, es_celebridad)VALUES (7, 'password7', 'Matthew', 'Davis', '901 Walnut St', '7890123456', 'matthew.davis@example.com', false);
INSERT INTO Usuario (id_usuario, contrasena, nombre, apellidos, direccion, telefono, email, es_celebridad)VALUES (8, 'password8', 'Ashley', 'Miller', '345 Birch Ave', '8901234567', 'ashley.miller@example.com', true);
INSERT INTO Usuario (id_usuario, contrasena, nombre, apellidos, direccion, telefono, email, es_celebridad)VALUES (9, 'password9', 'Daniel', 'Wilson', '678 Oak St', '9012345678', 'daniel.wilson@example.com', false);
INSERT INTO Usuario (id_usuario, contrasena, nombre, apellidos, direccion, telefono, email, es_celebridad)VALUES (10, 'password10', 'Samantha', 'Taylor', '123 Cedar Ave', '0123456789', 'samantha.taylor@example.com', true);

INSERT INTO Celebridad (id_celebridad, contrasena, nombre, apellidos, id_usuario, foto)VALUES ('celeb1', 'password1', 'John', 'Doe', 1, 'url_foto_1');
INSERT INTO Celebridad (id_celebridad, contrasena, nombre, apellidos, id_usuario, foto)VALUES ('celeb2', 'password2', 'Jane', 'Smith', 2, 'url_foto_2');
INSERT INTO Celebridad (id_celebridad, contrasena, nombre, apellidos, id_usuario, foto)VALUES ('celeb3', 'password3', 'Michael', 'Johnson', 3, 'url_foto_3');
INSERT INTO Celebridad (id_celebridad, contrasena, nombre, apellidos, id_usuario, foto)VALUES ('celeb4', 'password4', 'Emily', 'Williams', 4, 'url_foto_4');
INSERT INTO Celebridad (id_celebridad, contrasena, nombre, apellidos, id_usuario, foto)VALUES ('celeb5', 'password5', 'Christopher', 'Jones', 5, 'url_foto_5');
INSERT INTO Celebridad (id_celebridad, contrasena, nombre, apellidos, id_usuario, foto)VALUES ('celeb6', 'password6', 'Jessica', 'Brown', 6, 'url_foto_6');
INSERT INTO Celebridad (id_celebridad, contrasena, nombre, apellidos, id_usuario, foto)VALUES ('celeb7', 'password7', 'Matthew', 'Davis', 7, 'url_foto_7');
INSERT INTO Celebridad (id_celebridad, contrasena, nombre, apellidos, id_usuario, foto)VALUES ('celeb8', 'password8', 'Ashley', 'Miller', 8, 'url_foto_8');
INSERT INTO Celebridad (id_celebridad, contrasena, nombre, apellidos, id_usuario, foto)VALUES ('celeb9', 'password9', 'Daniel', 'Wilson', 9, 'url_foto_9');
INSERT INTO Celebridad (id_celebridad, contrasena, nombre, apellidos, id_usuario, foto)VALUES ('celeb10', 'password10', 'Samantha', 'Taylor', 10, 'url_foto_10');

INSERT INTO Contacto (telefono, descripcion) VALUES ('123456789', 'Descripción 1');
INSERT INTO Contacto (telefono, descripcion) VALUES ('234567890', 'Descripción 2');
INSERT INTO Contacto (telefono, descripcion) VALUES ('345678901', 'Descripción 3');
INSERT INTO Contacto (telefono, descripcion) VALUES ('456789012', 'Descripción 4');
INSERT INTO Contacto (telefono, descripcion) VALUES ('567890123', 'Descripción 5');
INSERT INTO Contacto (telefono, descripcion) VALUES ('678901234', 'Descripción 6');
INSERT INTO Contacto (telefono, descripcion) VALUES ('789012345', 'Descripción 7');
INSERT INTO Contacto (telefono, descripcion) VALUES ('890123456', 'Descripción 8');
INSERT INTO Contacto (telefono, descripcion) VALUES ('901234567', 'Descripción 9');
INSERT INTO Contacto (telefono, descripcion) VALUES ('012345678', 'Descripción 10');

INSERT INTO Tiene (id_usuario, telefono) VALUES (1, '123456789');
INSERT INTO Tiene (id_usuario, telefono) VALUES (2, '234567890');
INSERT INTO Tiene (id_usuario, telefono) VALUES (3, '345678901');
INSERT INTO Tiene (id_usuario, telefono) VALUES (4, '456789012');
INSERT INTO Tiene (id_usuario, telefono) VALUES (5, '567890123');
INSERT INTO Tiene (id_usuario, telefono) VALUES (6, '678901234');
INSERT INTO Tiene (id_usuario, telefono) VALUES (7, '789012345');
INSERT INTO Tiene (id_usuario, telefono) VALUES (8, '890123456');
INSERT INTO Tiene (id_usuario, telefono) VALUES (9, '901234567');
INSERT INTO Tiene (id_usuario, telefono) VALUES (10, '012345678');

INSERT INTO Grupo (nombre) VALUES ('Grupo1');
INSERT INTO Grupo (nombre) VALUES ('Grupo2');
INSERT INTO Grupo (nombre) VALUES ('Grupo3');
INSERT INTO Grupo (nombre) VALUES ('Grupo4');
INSERT INTO Grupo (nombre) VALUES ('Grupo5');
INSERT INTO Grupo (nombre) VALUES ('Grupo6');
INSERT INTO Grupo (nombre) VALUES ('Grupo7');
INSERT INTO Grupo (nombre) VALUES ('Grupo8');
INSERT INTO Grupo (nombre) VALUES ('Grupo9');
INSERT INTO Grupo (nombre) VALUES ('Grupo10');

INSERT INTO Organiza (telefono, nombre) VALUES ('123456789', 'Grupo1');
INSERT INTO Organiza (telefono, nombre) VALUES ('234567890', 'Grupo2');
INSERT INTO Organiza (telefono, nombre) VALUES ('345678901', 'Grupo3');
INSERT INTO Organiza (telefono, nombre) VALUES ('456789012', 'Grupo4');
INSERT INTO Organiza (telefono, nombre) VALUES ('567890123', 'Grupo5');
INSERT INTO Organiza (telefono, nombre) VALUES ('678901234', 'Grupo6');
INSERT INTO Organiza (telefono, nombre) VALUES ('789012345', 'Grupo7');
INSERT INTO Organiza (telefono, nombre) VALUES ('890123456', 'Grupo8');
INSERT INTO Organiza (telefono, nombre) VALUES ('901234567', 'Grupo9');
INSERT INTO Organiza (telefono, nombre) VALUES ('012345678', 'Grupo10');

INSERT INTO Comentario (usuario, texto, imagen) VALUES ('user1', 'Primer comentario', 'imagen1.jpg');
INSERT INTO Comentario (usuario, texto, imagen) VALUES ('user2', 'Segundo comentario', 'imagen2.jpg');
INSERT INTO Comentario (usuario, texto, imagen) VALUES ('user3', 'Tercer comentario', 'imagen3.jpg');
INSERT INTO Comentario (usuario, texto, imagen) VALUES ('user4', 'Cuarto comentario', 'imagen4.jpg');
INSERT INTO Comentario (usuario, texto, imagen) VALUES ('user5', 'Quinto comentario', 'imagen5.jpg');
INSERT INTO Comentario (usuario, texto, imagen) VALUES ('user6', 'Sexto comentario', 'imagen6.jpg');
INSERT INTO Comentario (usuario, texto, imagen) VALUES ('user7', 'Séptimo comentario', 'imagen7.jpg');
INSERT INTO Comentario (usuario, texto, imagen) VALUES ('user8', 'Octavo comentario', 'imagen8.jpg');
INSERT INTO Comentario (usuario, texto, imagen) VALUES ('user9', 'Noveno comentario', 'imagen9.jpg');
INSERT INTO Comentario (usuario, texto, imagen) VALUES ('user10', 'Décimo comentario', 'imagen10.jpg');

INSERT INTO Publica (id_usuario, usuario) VALUES (1, 'user1');
INSERT INTO Publica (id_usuario, usuario) VALUES (2, 'user2');
INSERT INTO Publica (id_usuario, usuario) VALUES (3, 'user3');
INSERT INTO Publica (id_usuario, usuario) VALUES (4, 'user4');
INSERT INTO Publica (id_usuario, usuario) VALUES (5, 'user5');
INSERT INTO Publica (id_usuario, usuario) VALUES (6, 'user6');
INSERT INTO Publica (id_usuario, usuario) VALUES (7, 'user7');
INSERT INTO Publica (id_usuario, usuario) VALUES (8, 'user8');
INSERT INTO Publica (id_usuario, usuario) VALUES (9, 'user9');
INSERT INTO Publica (id_usuario, usuario) VALUES (10, 'user10');



UPDATE Usuario SET direccion = 'Calle Este 789' WHERE id_usuario = 3;
UPDATE Usuario SET telefono = '555555555' WHERE id_usuario = 4;
UPDATE Celebridad SET nombre = 'Michael Updated' WHERE id_celebridad = 'celeb3';
UPDATE Celebridad SET foto = 'new_url_foto_4' WHERE id_celebridad = 'celeb4';
UPDATE Contacto SET descripcion = 'Nueva descripción 3' WHERE telefono = '345678901';
UPDATE Contacto SET descripcion = 'Descripción actualizada 7' WHERE telefono = '789012345';
UPDATE Tiene SET id_usuario = 11 WHERE telefono = '123456789';
UPDATE Tiene SET telefono = '111222333' WHERE id_usuario = 2;
UPDATE Grupo SET nombre = 'NuevoGrupo1' WHERE nombre = 'Grupo1';
UPDATE Grupo SET nombre = 'NuevoGrupo5' WHERE nombre = 'Grupo5';
UPDATE Organiza SET nombre = 'GrupoActualizado' WHERE telefono = '123456789';
UPDATE Organiza SET telefono = '111222333' WHERE nombre = 'Grupo2';
UPDATE Comentario SET texto = 'Primer comentario actualizado' WHERE usuario = 'user1';
UPDATE Comentario SET imagen = 'nueva_imagen1.jpg' WHERE usuario = 'user2';
UPDATE Publica SET id_usuario = 11 WHERE usuario = 'user1';
UPDATE Publica SET usuario = 'new_user2' WHERE id_usuario = 2;



DELETE FROM Usuario WHERE id_usuario = 2;
DELETE FROM Usuario WHERE id_usuario = 5;
DELETE FROM Celebridad WHERE id_celebridad = 'celeb7';
DELETE FROM Celebridad WHERE id_celebridad = 'celeb10';
DELETE FROM Contacto WHERE telefono = '234567890';
DELETE FROM Contacto WHERE telefono = '567890123';
DELETE FROM Tiene WHERE id_usuario = 3;
DELETE FROM Tiene WHERE telefono = '567890123';
DELETE FROM Grupo WHERE nombre = 'Grupo2';
DELETE FROM Grupo WHERE nombre = 'Grupo7';
DELETE FROM Organiza WHERE telefono = '345678901';
DELETE FROM Organiza WHERE nombre = 'Grupo5';
DELETE FROM Comentario WHERE usuario = 'user3';
DELETE FROM Comentario WHERE usuario = 'user8';
DELETE FROM Publica WHERE id_usuario = 3;
DELETE FROM Publica WHERE usuario = 'user8';

