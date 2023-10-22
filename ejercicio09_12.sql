drop database if exists ejercicio09_12;
create database if not exists ejercicio09_12;
use ejercicio9;

CREATE TABLE IF NOT EXISTS Ingrediente (
    id_ingrediente INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100),
    unidad_medida VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS Receta (
    id_receta INT PRIMARY KEY AUTO_INCREMENT,
    nombre_receta VARCHAR(255),
    tiempo_preparacion INT,
    porciones INT,
    utensilios TEXT,
    instrucciones TEXT
);

CREATE TABLE IF NOT EXISTS Comida (
    id_comida INT PRIMARY KEY AUTO_INCREMENT,
    nombre_plato VARCHAR(255),
    tipo_plato VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS Prepara (
    fk_id_ingrediente INT,
    fk_id_comida INT,
    PRIMARY KEY (fk_id_ingrediente , fk_id_comida),
    FOREIGN KEY (fk_id_ingrediente)
        REFERENCES Ingrediente (id_ingrediente)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (fk_id_comida)
        REFERENCES Comida (id_comida)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS Contiene (
    fk_id_ingrediente INT,
    fk_id_receta INT,
    cantidad_ingredientes INT,
    PRIMARY KEY (fk_id_ingrediente , fk_id_receta),
    FOREIGN KEY (fk_id_ingrediente)
        REFERENCES Ingrediente (id_ingrediente)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (fk_id_receta)
        REFERENCES Receta (id_receta)
        ON DELETE CASCADE ON UPDATE CASCADE
);


