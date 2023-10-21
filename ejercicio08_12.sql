drop database if exists ejercicio08_12;
create database if not exists ejercicio08_12;
use ejercicio08_12;

CREATE TABLE IF NOT EXISTS Cliente (
    DNI VARCHAR(9) PRIMARY KEY,
    nombre VARCHAR(15),
    apellidos VARCHAR(15),
    direccion VARCHAR(40),
    telefono VARCHAR(13),
    targeta_credito VARCHAR(40)
);

CREATE TABLE IF NOT EXISTS Targeta_Embarque (
    id_targeta_embarque VARCHAR(10) PRIMARY KEY,
    num_reserva VARCHAR(10),
    fecha DATE
);

CREATE TABLE IF NOT EXISTS Reserva (
    fk_DNI VARCHAR(10),
    fk_id_targeta_embarque VARCHAR(10),
    PRIMARY KEY (fk_DNI , fk_id_targeta_embarque),
    FOREIGN KEY (fk_DNI)
        REFERENCES Cliente (DNI)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (fk_id_targeta_embarque)
        REFERENCES Targeta_Embarque (id_targeta_embarque)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS Avion (
    id_vuelo VARCHAR(10) PRIMARY KEY,
    num_plazas VARCHAR(10)
);

CREATE TABLE IF NOT EXISTS Asiento (
    id_asiento VARCHAR(10) PRIMARY KEY,
    fila VARCHAR(2),
    columna VARCHAR(2),
    planta VARCHAR(2),
    fk_id_vuelo VARCHAR(10),
    fk_id_targeta_embarque VARCHAR(10),
    FOREIGN KEY (fk_id_vuelo)
        REFERENCES Avion (id_vuelo)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (fk_id_targeta_embarque)
        REFERENCES Targeta_Embarque (id_targeta_embarque)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS Aeropuerto (
    codigo_aeropuerto VARCHAR(10) PRIMARY KEY,
    nombre VARCHAR(20),
    localidad VARCHAR(20),
    pais VARCHAR(20)
);

CREATE TABLE IF NOT EXISTS Vuelo (
    id_vuelo VARCHAR(10) PRIMARY KEY,
    hora_salida TIME,
    hora_llegada TIME,
    fk_codigo_aeropuerto_salida VARCHAR(10),
    fk_codigo_aeropuerto_llegada VARCHAR(10),
    FOREIGN KEY (fk_codigo_aeropuerto_salida)
        REFERENCES Aeropuerto (codigo_aeropuerto)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (fk_codigo_aeropuerto_llegada)
        REFERENCES Aeropuerto (codigo_aeropuerto)
        ON DELETE CASCADE ON UPDATE CASCADE
);