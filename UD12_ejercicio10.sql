DROP DATABASE IF EXISTS ejercicio10;
CREATE DATABASE IF NOT EXISTS ejercicio10;

USE ejercicio10;

CREATE TABLE IF NOT EXISTS Jugador (
    Id_Jugador INT PRIMARY KEY AUTO_INCREMENT,
    Dorsal INT NOT NULL,
    Nombre VARCHAR(255),
    Apellidos VARCHAR(255),
    Goles INT,
    Posicion VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS Equipo (
    Id_equipo INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(100),
    Ano_Fundacion Date,
    Trofeos_Ganados INT,
    Puntos_Liga INT,
    Cuerpo_Tecnico VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS Pertenece (
    Id_Jugador INT,
    Id_Equipo INT,
    PRIMARY KEY(Id_Jugador, Id_Equipo),
    FOREIGN KEY (Id_Jugador)
        REFERENCES Jugador (Id_Jugador),
    FOREIGN KEY (Id_Equipo)
        REFERENCES Equipo (Id_Equipo)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS Partido (
	Id_Partido INT PRIMARY KEY AUTO_INCREMENT,
    Jornada INT,
    Campeonato VARCHAR(100)
);
CREATE TABLE IF NOT EXISTS Juega (
	Id_Equipo INT,
    Id_Partido INT,
    PRIMARY KEY(Id_Equipo, Id_Partido),
    FOREIGN KEY (Id_Equipo)
        REFERENCES Equipo (Id_Equipo),
    FOREIGN KEY (Id_Partido)
        REFERENCES Partido (Id_Partido)
        ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO Jugador (Dorsal, Nombre, Apellidos, Goles, Posicion) VALUES (7, 'Diego', 'Maradona', 150, 'Delantero');
INSERT INTO Jugador (Dorsal, Nombre, Apellidos, Goles, Posicion) VALUES (10, 'Zinedine', 'Zidane', 85, 'Centrocampista');
INSERT INTO Jugador (Dorsal, Nombre, Apellidos, Goles, Posicion) VALUES (23, 'Paolo', 'Maldini', 20, 'Defensor');
INSERT INTO Jugador (Dorsal, Nombre, Apellidos, Goles, Posicion) VALUES (9, 'George', 'Best', 60, 'Delantero');
INSERT INTO Jugador (Dorsal, Nombre, Apellidos, Goles, Posicion) VALUES (5, 'Johan', 'Cruyff', 70, 'Centrocampista');
INSERT INTO Jugador (Dorsal, Nombre, Apellidos, Goles, Posicion) VALUES (17, 'Franz', 'Beckenbauer', 40, 'Defensor');
INSERT INTO Jugador (Dorsal, Nombre, Apellidos, Goles, Posicion) VALUES (20, 'Lev', 'Yashin', 0, 'Portero');
INSERT INTO Jugador (Dorsal, Nombre, Apellidos, Goles, Posicion) VALUES (11, 'Alfredo', 'Di Stefano', 120, 'Delantero');
INSERT INTO Jugador (Dorsal, Nombre, Apellidos, Goles, Posicion) VALUES (8, 'Bobby', 'Charlton', 60, 'Centrocampista');
INSERT INTO Jugador (Dorsal, Nombre, Apellidos, Goles, Posicion) VALUES (15, 'Lev', 'Yashin', 0, 'Portero');

INSERT INTO Equipo (Nombre, Ano_Fundacion, Trofeos_Ganados, Puntos_Liga, Cuerpo_Tecnico) VALUES ('Los Tigres Blancos', '2009-01-01', 2, 10, 'Eduardo Coudet');
INSERT INTO Equipo (Nombre, Ano_Fundacion, Trofeos_Ganados, Puntos_Liga, Cuerpo_Tecnico) VALUES ('Los Gladiadores', '2010-01-01', 1, 15, 'Diego Maradona');
INSERT INTO Equipo (Nombre, Ano_Fundacion, Trofeos_Ganados, Puntos_Liga, Cuerpo_Tecnico) VALUES ('Los Corsarios', '2011-01-01', 0, 5, 'Marcelo Bielsa');
INSERT INTO Equipo (Nombre, Ano_Fundacion, Trofeos_Ganados, Puntos_Liga, Cuerpo_Tecnico) VALUES ('Los Conquistadores', '2012-01-01', 3, 35, 'Maurizio Sarri');
INSERT INTO Equipo (Nombre, Ano_Fundacion, Trofeos_Ganados, Puntos_Liga, Cuerpo_Tecnico) VALUES ('Los Vikingos Rojos', '2013-01-01', 4, 40, 'Ricardo Gareca');
INSERT INTO Equipo (Nombre, Ano_Fundacion, Trofeos_Ganados, Puntos_Liga, Cuerpo_Tecnico) VALUES ('Los Guerreros', '2014-01-01', 2, 20, 'Unai Emery');
INSERT INTO Equipo (Nombre, Ano_Fundacion, Trofeos_Ganados, Puntos_Liga, Cuerpo_Tecnico) VALUES ('Los Exploradores', '2015-01-01', 1, 25, 'Julen Lopetegui');
INSERT INTO Equipo (Nombre, Ano_Fundacion, Trofeos_Ganados, Puntos_Liga, Cuerpo_Tecnico) VALUES ('Los Invictos', '2016-01-01', 5, 50, 'Thomas Tuchel');
INSERT INTO Equipo (Nombre, Ano_Fundacion, Trofeos_Ganados, Puntos_Liga, Cuerpo_Tecnico) VALUES ('Los Halcones', '2017-01-01', 3, 30, 'Antonio Conte');
INSERT INTO Equipo (Nombre, Ano_Fundacion, Trofeos_Ganados, Puntos_Liga, Cuerpo_Tecnico) VALUES ('Los Lobos Plateados', '2018-01-01', 1, 10, 'Roberto Mancini');

INSERT INTO Pertenece (Id_Jugador, Id_Equipo) VALUES (1, 1);
INSERT INTO Pertenece (Id_Jugador, Id_Equipo) VALUES (2, 2);
INSERT INTO Pertenece (Id_Jugador, Id_Equipo) VALUES (3, 3);
INSERT INTO Pertenece (Id_Jugador, Id_Equipo) VALUES (4, 4);
INSERT INTO Pertenece (Id_Jugador, Id_Equipo) VALUES (5, 5);
INSERT INTO Pertenece (Id_Jugador, Id_Equipo) VALUES (6, 6);
INSERT INTO Pertenece (Id_Jugador, Id_Equipo) VALUES (7, 7);
INSERT INTO Pertenece (Id_Jugador, Id_Equipo) VALUES (8, 8);
INSERT INTO Pertenece (Id_Jugador, Id_Equipo) VALUES (9, 9);
INSERT INTO Pertenece (Id_Jugador, Id_Equipo) VALUES (10, 10);

INSERT INTO Partido (Jornada, Campeonato) VALUES (1, 'Liga 2023');
INSERT INTO Partido (Jornada, Campeonato) VALUES (2, 'Liga 2023');
INSERT INTO Partido (Jornada, Campeonato) VALUES (3, 'Liga 2023');
INSERT INTO Partido (Jornada, Campeonato) VALUES (4, 'Liga 2023');
INSERT INTO Partido (Jornada, Campeonato) VALUES (5, 'Liga 2023');
INSERT INTO Partido (Jornada, Campeonato) VALUES (6, 'Liga 2023');
INSERT INTO Partido (Jornada, Campeonato) VALUES (7, 'Liga 2023');
INSERT INTO Partido (Jornada, Campeonato) VALUES (8, 'Liga 2023');
INSERT INTO Partido (Jornada, Campeonato) VALUES (9, 'Liga 2023');
INSERT INTO Partido (Jornada, Campeonato) VALUES (10, 'Liga 2023');

INSERT INTO Juega (Id_Equipo, Id_Partido) VALUES (1, 1);
INSERT INTO Juega (Id_Equipo, Id_Partido) VALUES (2, 2);
INSERT INTO Juega (Id_Equipo, Id_Partido) VALUES (3, 3);
INSERT INTO Juega (Id_Equipo, Id_Partido) VALUES (4, 4);
INSERT INTO Juega (Id_Equipo, Id_Partido) VALUES (5, 5);
INSERT INTO Juega (Id_Equipo, Id_Partido) VALUES (6, 6);
INSERT INTO Juega (Id_Equipo, Id_Partido) VALUES (7, 7);
INSERT INTO Juega (Id_Equipo, Id_Partido) VALUES (8, 8);
INSERT INTO Juega (Id_Equipo, Id_Partido) VALUES (9, 9);
INSERT INTO Juega (Id_Equipo, Id_Partido) VALUES (10, 10);

UPDATE Jugador SET Goles = 850 WHERE Id_Jugador = 1;
UPDATE Jugador SET Posicion = 'Mediocampista' WHERE Id_Jugador = 5;

-- Para eliminar registros con restricciones de clave foranea
DELETE FROM Juega WHERE Id_Equipo = 10;
DELETE FROM Juega WHERE Id_Equipo = 9;
DELETE FROM Pertenece WHERE Id_Jugador = 10;
DELETE FROM Pertenece WHERE Id_Jugador = 9;

DELETE FROM Jugador WHERE Id_Jugador = 10;
DELETE FROM Jugador WHERE Id_Jugador = 9;

UPDATE Equipo SET Trofeos_Ganados = 6 WHERE Id_Equipo = 2;
UPDATE Equipo SET Cuerpo_Tecnico = 'Rafa Benitez' WHERE Id_Equipo = 5;
DELETE FROM Equipo WHERE Id_Equipo = 10;
DELETE FROM Equipo WHERE Id_Equipo = 9;

UPDATE Partido SET Jornada = 20 WHERE Id_Partido = 1;
UPDATE Partido SET Campeonato = 'Copa 2023' WHERE Id_Partido = 3;
DELETE FROM Partido WHERE Id_Partido = 10;
DELETE FROM Partido WHERE Id_Partido = 9;
