drop database if exists ejercicio09_12;
create database if not exists ejercicio09_12;
use ejercicio09_12;

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

-- INSERTS--

-- Ingrediente

INSERT INTO Ingrediente (nombre, unidad_medida) VALUES ('Harina de trigo', 'gramos');
INSERT INTO Ingrediente (nombre, unidad_medida) VALUES ('Azúcar', 'gramos');
INSERT INTO Ingrediente (nombre, unidad_medida) VALUES ('Leche', 'ml');
INSERT INTO Ingrediente (nombre, unidad_medida) VALUES ('Sal', 'gramos');
INSERT INTO Ingrediente (nombre, unidad_medida) VALUES ('Aceite de cocina', 'ml');
INSERT INTO Ingrediente (nombre, unidad_medida) VALUES ('Huevos', 'unidades');
INSERT INTO Ingrediente (nombre, unidad_medida) VALUES ('Chocolate en polvo', 'gramos');
INSERT INTO Ingrediente (nombre, unidad_medida) VALUES ('Levadura en polvo', 'gramos');
INSERT INTO Ingrediente (nombre, unidad_medida) VALUES ('Zanahoria', 'gramos');
INSERT INTO Ingrediente (nombre, unidad_medida) VALUES ('Cebolla', 'gramos');

-- Receta

INSERT INTO Receta (nombre_receta, tiempo_preparacion, porciones, utensilios, instrucciones) VALUES ('Pastel de Chocolate', 60, 12, 'Molde para pastel, batidora', 'Pasos de preparación del pastel de chocolate');
INSERT INTO Receta (nombre_receta, tiempo_preparacion, porciones, utensilios, instrucciones) VALUES ('Lasaña de Pollo', 90, 8, 'Horno, sartén', 'Pasos de preparación de la lasaña de pollo');
INSERT INTO Receta (nombre_receta, tiempo_preparacion, porciones, utensilios, instrucciones) VALUES ('Salmón a la Parrilla', 30, 4, 'Parrilla, espátula', 'Pasos de preparación del salmón a la parrilla');
INSERT INTO Receta (nombre_receta, tiempo_preparacion, porciones, utensilios, instrucciones) VALUES ('Ensalada César', 15, 2, 'Bol, tenedor', 'Pasos de preparación de la ensalada César');
INSERT INTO Receta (nombre_receta, tiempo_preparacion, porciones, utensilios, instrucciones) VALUES ('Risotto de Champiñones', 40, 6, 'Cacerola, cuchara de madera', 'Pasos de preparación del risotto de champiñones');
INSERT INTO Receta (nombre_receta, tiempo_preparacion, porciones, utensilios, instrucciones) VALUES ('Tarta de Manzana', 75, 10, 'Molde para tarta, rodillo de masa', 'Pasos de preparación de la tarta de manzana');
INSERT INTO Receta (nombre_receta, tiempo_preparacion, porciones, utensilios, instrucciones) VALUES ('Pollo a la Parmesana', 45, 4, 'Horno, sartén', 'Pasos de preparación del pollo a la parmesana');
INSERT INTO Receta (nombre_receta, tiempo_preparacion, porciones, utensilios, instrucciones) VALUES ('Salsa de Tomate Casera', 60, 8, 'Cacerola, batidora', 'Pasos de preparación de la salsa de tomate casera');
INSERT INTO Receta (nombre_receta, tiempo_preparacion, porciones, utensilios, instrucciones) VALUES ('Helado de Vainilla', 120, 6, 'Máquina de helados, bol', 'Pasos de preparación del helado de vainilla');
INSERT INTO Receta (nombre_receta, tiempo_preparacion, porciones, utensilios, instrucciones) VALUES ('Pescado a la Parrilla', 25, 4, 'Parrilla, espátula', 'Pasos de preparación del pescado a la parrilla');

-- Comida

-- 10 inserciones en Comida
INSERT INTO Comida (nombre_plato, tipo_plato) VALUES ('Pastel', 'Postres');
INSERT INTO Comida (nombre_plato, tipo_plato) VALUES ('Lasaña', 'Pastas');
INSERT INTO Comida (nombre_plato, tipo_plato) VALUES ('Pescado', 'Pescados');
INSERT INTO Comida (nombre_plato, tipo_plato) VALUES ('Ensalada', 'Ensaladas');
INSERT INTO Comida (nombre_plato, tipo_plato) VALUES ('Risotto', 'Arroces');
INSERT INTO Comida (nombre_plato, tipo_plato) VALUES ('Tarta', 'Postres');
INSERT INTO Comida (nombre_plato, tipo_plato) VALUES ('Pollo', 'Carnes');
INSERT INTO Comida (nombre_plato, tipo_plato) VALUES ('Salsas', 'Salsas');
INSERT INTO Comida (nombre_plato, tipo_plato) VALUES ('Helados', 'Postres');
INSERT INTO Comida (nombre_plato, tipo_plato) VALUES ('Pescado', 'Pescados');

-- Prepara

-- 10 inserciones en Prepara
INSERT INTO Prepara (fk_id_ingrediente, fk_id_comida) VALUES (1, 1);
INSERT INTO Prepara (fk_id_ingrediente, fk_id_comida) VALUES (2, 1);
INSERT INTO Prepara (fk_id_ingrediente, fk_id_comida) VALUES (3, 2);
INSERT INTO Prepara (fk_id_ingrediente, fk_id_comida) VALUES (4, 2);
INSERT INTO Prepara (fk_id_ingrediente, fk_id_comida) VALUES (5, 3);
INSERT INTO Prepara (fk_id_ingrediente, fk_id_comida) VALUES (6, 3);
INSERT INTO Prepara (fk_id_ingrediente, fk_id_comida) VALUES (7, 4);
INSERT INTO Prepara (fk_id_ingrediente, fk_id_comida) VALUES (8, 4);
INSERT INTO Prepara (fk_id_ingrediente, fk_id_comida) VALUES (9, 5);
INSERT INTO Prepara (fk_id_ingrediente, fk_id_comida) VALUES (10, 5);

-- Contiene
INSERT INTO Contiene (fk_id_ingrediente, fk_id_receta, cantidad_ingredientes) VALUES (1, 1, 200);
INSERT INTO Contiene (fk_id_ingrediente, fk_id_receta, cantidad_ingredientes) VALUES (2, 1, 150);
INSERT INTO Contiene (fk_id_ingrediente, fk_id_receta, cantidad_ingredientes) VALUES (3, 2, 300);
INSERT INTO Contiene (fk_id_ingrediente, fk_id_receta, cantidad_ingredientes) VALUES (4, 2, 200);
INSERT INTO Contiene (fk_id_ingrediente, fk_id_receta, cantidad_ingredientes) VALUES (5, 3, 250);
INSERT INTO Contiene (fk_id_ingrediente, fk_id_receta, cantidad_ingredientes) VALUES (6, 3, 2);
INSERT INTO Contiene (fk_id_ingrediente, fk_id_receta, cantidad_ingredientes) VALUES (7, 4, 100);
INSERT INTO Contiene (fk_id_ingrediente, fk_id_receta, cantidad_ingredientes) VALUES (8, 4, 50);
INSERT INTO Contiene (fk_id_ingrediente, fk_id_receta, cantidad_ingredientes) VALUES (9, 5, 100);
INSERT INTO Contiene (fk_id_ingrediente, fk_id_receta, cantidad_ingredientes) VALUES (10, 5, 75);

-- UPDATES

UPDATE Ingrediente
SET nombre = 'Harina de trigo especial'
WHERE id_ingrediente = 1;

UPDATE Receta
SET tiempo_preparacion = 45
WHERE id_receta = 3;

UPDATE Comida
SET tipo_plato = 'Pescado y Mariscos'
WHERE id_comida = 5;

UPDATE Prepara
SET fk_id_ingrediente = 9
WHERE fk_id_ingrediente = 8 AND fk_id_comida = 7;

UPDATE Contiene 
SET 
    cantidad_ingredientes = 150
WHERE
    fk_id_ingrediente = 3
        AND fk_id_receta = 4;
        
-- DELETES

DELETE FROM Ingrediente
WHERE id_ingrediente = 5;

DELETE FROM Receta
WHERE id_receta = 7;

DELETE FROM Comida
WHERE id_comida = 3;

DELETE FROM Prepara
WHERE fk_id_ingrediente = 6 AND fk_id_comida = 2;

DELETE FROM Prepara
WHERE fk_id_ingrediente = 6 AND fk_id_comida = 2;

DELETE FROM Contiene 
WHERE
    fk_id_ingrediente = 4
    AND fk_id_receta = 5;
