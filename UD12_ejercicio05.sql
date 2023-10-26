drop database if exists ejercicio05_15;
create database if not exists ejercicio05_15;
use ejercicio05_15;

create table if not exists Pieza (
	id_pieza varchar(10) PRIMARY KEY,
    descripcion text,
    precio double
);

create table if not exists Compuesto(
	fk_id_pieza_1 varchar(10),
    fk_id_pieza_2 varchar(10),
    primary key (fk_id_pieza_1, fk_id_pieza_2),
    foreign key (fk_id_pieza_1) references Pieza(id_pieza)
		ON DELETE CASCADE
    ON UPDATE CASCADE,
    foreign key (fk_id_pieza_2) references Pieza(id_pieza)
		ON DELETE CASCADE
    ON UPDATE CASCADE
);

create table if not exists Estanteria (
	id_estanteria varchar(10) PRIMARY KEY,
	cantidad_piezas int
);

create table if not exists Guarda(
	fk_id_pieza varchar(10),
    fk_id_estanteria varchar(10),
    primary key (fk_id_pieza, fk_id_estanteria),
    foreign key (fk_id_pieza) references Pieza(id_pieza)
		ON DELETE CASCADE
    ON UPDATE CASCADE,
    foreign key (fk_id_estanteria) references Estanteria(id_estanteria)
		ON DELETE CASCADE
    ON UPDATE CASCADE
);

create table if not exists Almacen (
	num_almacen varchar(10) PRIMARY KEY,
	descripcion text,
    direccion varchar(60)
);

create table if not exists Contiene (
	fk_id_estanteria varchar(10),
    fk_num_almacen varchar(40),
    primary key (fk_id_estanteria, fk_num_almacen),
        foreign key (fk_num_almacen) references Almacen(num_almacen)
    	ON DELETE CASCADE
    ON UPDATE CASCADE,
	foreign key (fk_id_estanteria) references Estanteria(id_estanteria)
		ON DELETE CASCADE
    ON UPDATE CASCADE

);


INSERT INTO Pieza (id_pieza, descripcion, precio) VALUES ('P001', 'Mesa de madera', 120.50);
INSERT INTO Pieza (id_pieza, descripcion, precio) VALUES ('P002', 'Silla de cuero', 65.25);
INSERT INTO Pieza (id_pieza, descripcion, precio) VALUES ('P003', 'Lampara de techo', 45.99);
INSERT INTO Pieza (id_pieza, descripcion, precio) VALUES ('P004', 'Sofa de tela', 350.75);
INSERT INTO Pieza (id_pieza, descripcion, precio) VALUES ('P005', 'Mesa de centro', 85.00);
INSERT INTO Pieza (id_pieza, descripcion, precio) VALUES ('P006', 'Cama king-size', 299.99);
INSERT INTO Pieza (id_pieza, descripcion, precio) VALUES ('P007', 'Silla plegable', 22.50);
INSERT INTO Pieza (id_pieza, descripcion, precio) VALUES ('P008', 'Estanteria de madera', 60.25);
INSERT INTO Pieza (id_pieza, descripcion, precio) VALUES ('P009', 'Sillon reclinable', 199.99);
INSERT INTO Pieza (id_pieza, descripcion, precio) VALUES ('P010', 'Mesa de comedor', 180.00);

INSERT INTO Compuesto (fk_id_pieza_1, fk_id_pieza_2) VALUES ('P001', 'P002');
INSERT INTO Compuesto (fk_id_pieza_1, fk_id_pieza_2) VALUES ('P003', 'P005');
INSERT INTO Compuesto (fk_id_pieza_1, fk_id_pieza_2) VALUES ('P004', 'P006');
INSERT INTO Compuesto (fk_id_pieza_1, fk_id_pieza_2) VALUES ('P007', 'P008');
INSERT INTO Compuesto (fk_id_pieza_1, fk_id_pieza_2) VALUES ('P009', 'P010');
INSERT INTO Compuesto (fk_id_pieza_1, fk_id_pieza_2) VALUES ('P001', 'P003');
INSERT INTO Compuesto (fk_id_pieza_1, fk_id_pieza_2) VALUES ('P004', 'P007');
INSERT INTO Compuesto (fk_id_pieza_1, fk_id_pieza_2) VALUES ('P002', 'P005');
INSERT INTO Compuesto (fk_id_pieza_1, fk_id_pieza_2) VALUES ('P006', 'P009');
INSERT INTO Compuesto (fk_id_pieza_1, fk_id_pieza_2) VALUES ('P008', 'P010');

INSERT INTO Estanteria (id_estanteria, cantidad_piezas) VALUES ('E001', 50);
INSERT INTO Estanteria (id_estanteria, cantidad_piezas) VALUES ('E002', 30);
INSERT INTO Estanteria (id_estanteria, cantidad_piezas) VALUES ('E003', 25);
INSERT INTO Estanteria (id_estanteria, cantidad_piezas) VALUES ('E004', 40);
INSERT INTO Estanteria (id_estanteria, cantidad_piezas) VALUES ('E005', 60);
INSERT INTO Estanteria (id_estanteria, cantidad_piezas) VALUES ('E006', 45);
INSERT INTO Estanteria (id_estanteria, cantidad_piezas) VALUES ('E007', 55);
INSERT INTO Estanteria (id_estanteria, cantidad_piezas) VALUES ('E008', 20);
INSERT INTO Estanteria (id_estanteria, cantidad_piezas) VALUES ('E009', 35);
INSERT INTO Estanteria (id_estanteria, cantidad_piezas) VALUES ('E010', 40);

INSERT INTO Guarda (fk_id_pieza, fk_id_estanteria) VALUES ('P001', 'E001');
INSERT INTO Guarda (fk_id_pieza, fk_id_estanteria) VALUES ('P002', 'E002');
INSERT INTO Guarda (fk_id_pieza, fk_id_estanteria) VALUES ('P003', 'E003');
INSERT INTO Guarda (fk_id_pieza, fk_id_estanteria) VALUES ('P004', 'E004');
INSERT INTO Guarda (fk_id_pieza, fk_id_estanteria) VALUES ('P005', 'E005');
INSERT INTO Guarda (fk_id_pieza, fk_id_estanteria) VALUES ('P006', 'E006');
INSERT INTO Guarda (fk_id_pieza, fk_id_estanteria) VALUES ('P007', 'E007');
INSERT INTO Guarda (fk_id_pieza, fk_id_estanteria) VALUES ('P008', 'E008');
INSERT INTO Guarda (fk_id_pieza, fk_id_estanteria) VALUES ('P009', 'E009');
INSERT INTO Guarda (fk_id_pieza, fk_id_estanteria) VALUES ('P010', 'E010');

INSERT INTO Almacen (num_almacen, descripcion, direccion) VALUES ('A001', 'Almacén principal', 'Calle Principal, 123');
INSERT INTO Almacen (num_almacen, descripcion, direccion) VALUES ('A002', 'Almacén secundario', 'Calle Secundaria, 456');
INSERT INTO Almacen (num_almacen, descripcion, direccion) VALUES ('A003', 'Almacén de repuestos', 'Avenida de los Repuestos, 789');
INSERT INTO Almacen (num_almacen, descripcion, direccion) VALUES ('A004', 'Almacén de suministros', 'Avenida de Suministros, 1011');
INSERT INTO Almacen (num_almacen, descripcion, direccion) VALUES ('A005', 'Almacén de productos', 'Calle de Productos, 1213');
INSERT INTO Almacen (num_almacen, descripcion, direccion) VALUES ('A006', 'Almacén general', 'Avenida General, 1415');
INSERT INTO Almacen (num_almacen, descripcion, direccion) VALUES ('A007', 'Almacén de materiales', 'Calle de Materiales, 1617');
INSERT INTO Almacen (num_almacen, descripcion, direccion) VALUES ('A008', 'Almacén central', 'Avenida Central, 1819');
INSERT INTO Almacen (num_almacen, descripcion, direccion) VALUES ('A009', 'Almacén de herramientas', 'Calle de Herramientas, 2021');
INSERT INTO Almacen (num_almacen, descripcion, direccion) VALUES ('A010', 'Almacén de inventario', 'Avenida de Inventario, 2223');

INSERT INTO Contiene (fk_id_estanteria, fk_num_almacen) VALUES ('E001', 'A001');
INSERT INTO Contiene (fk_id_estanteria, fk_num_almacen) VALUES ('E002', 'A002');
INSERT INTO Contiene (fk_id_estanteria, fk_num_almacen) VALUES ('E003', 'A003');
INSERT INTO Contiene (fk_id_estanteria, fk_num_almacen) VALUES ('E004', 'A004');
INSERT INTO Contiene (fk_id_estanteria, fk_num_almacen) VALUES ('E005', 'A005');
INSERT INTO Contiene (fk_id_estanteria, fk_num_almacen) VALUES ('E006', 'A006');
INSERT INTO Contiene (fk_id_estanteria, fk_num_almacen) VALUES ('E007', 'A007');
INSERT INTO Contiene (fk_id_estanteria, fk_num_almacen) VALUES ('E008', 'A008');
INSERT INTO Contiene (fk_id_estanteria, fk_num_almacen) VALUES ('E009', 'A009');
INSERT INTO Contiene (fk_id_estanteria, fk_num_almacen) VALUES ('E010', 'A010');



UPDATE Pieza SET precio = 130.00 WHERE id_pieza = 'P001';
UPDATE Pieza SET descripcion = 'Silla de plastico' WHERE id_pieza = 'P007';
DELETE FROM Pieza WHERE id_pieza = 'P010';
DELETE FROM Pieza WHERE id_pieza = 'P008';

DELETE FROM Compuesto WHERE fk_id_pieza_1 = 'P001' AND fk_id_pieza_2 = 'P002';
DELETE FROM Compuesto WHERE fk_id_pieza_1 = 'P003' AND fk_id_pieza_2 = 'P005';

UPDATE Estanteria SET cantidad_piezas = 55 WHERE id_estanteria = 'E001';
UPDATE Estanteria SET cantidad_piezas = 25 WHERE id_estanteria = 'E003';
DELETE FROM Estanteria WHERE id_estanteria = 'E010';
DELETE FROM Estanteria WHERE id_estanteria = 'E008';

UPDATE Guarda SET fk_id_estanteria = 'E005' WHERE fk_id_pieza = 'P001';
UPDATE Guarda SET fk_id_estanteria = 'E002' WHERE fk_id_pieza = 'P007';
DELETE FROM Guarda WHERE fk_id_pieza = 'P010' AND fk_id_estanteria = 'E010';
DELETE FROM Guarda WHERE fk_id_pieza = 'P008' AND fk_id_estanteria = 'E008';

UPDATE Almacen SET descripcion = 'Almacén principal renovado' WHERE num_almacen = 'A001';
UPDATE Almacen SET direccion = 'Avenida Principal, 1234' WHERE num_almacen = 'A002';
DELETE FROM Almacen WHERE num_almacen = 'A010';
DELETE FROM Almacen WHERE num_almacen = 'A008';

UPDATE Contiene SET fk_num_almacen = 'A003' WHERE fk_id_estanteria = 'E001';
UPDATE Contiene SET fk_num_almacen = 'A005' WHERE fk_id_estanteria = 'E002';
DELETE FROM Contiene WHERE fk_id_estanteria = 'E010' AND fk_num_almacen = 'A010';
DELETE FROM Contiene WHERE fk_id_estanteria = 'E008' AND fk_num_almacen = 'A008';

