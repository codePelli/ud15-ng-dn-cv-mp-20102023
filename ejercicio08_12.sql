drop database if exists ejercicio08_12;
create database if not exists ejercicio08_12;
use ejercicio08_12;

CREATE TABLE IF NOT EXISTS Cliente (
    DNI VARCHAR(20) PRIMARY KEY NOT NULL UNIQUE,
    nombre VARCHAR(255),
    apellidos VARCHAR(255),
    direccion VARCHAR(100),
    telefono VARCHAR(20),
    tarjeta_credito VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS Avion (
    id_avion INT PRIMARY KEY AUTO_INCREMENT,
    num_plazas VARCHAR(20)
);

CREATE TABLE IF NOT EXISTS Asiento (
    id_asiento VARCHAR(20) PRIMARY KEY NOT NULL UNIQUE,
    fila VARCHAR(10),
    puerta VARCHAR(10),
    fk_id_avion INT,
    FOREIGN KEY (fk_id_avion)
        REFERENCES Avion (id_avion)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS Tarjeta_Embarque (
    id_tarjeta_embarque INT PRIMARY KEY AUTO_INCREMENT,
    fk_DNI_cliente VARCHAR(20),
    fk_id_asiento VARCHAR(20),
    num_reserva VARCHAR(20),
    fecha DATE,
    FOREIGN KEY (fk_DNI_cliente)
        REFERENCES Cliente (DNI)
        ON DELETE CASCADE ON UPDATE CASCADE,
            FOREIGN KEY (fk_id_asiento)
        REFERENCES Asiento (id_asiento)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS Aeropuerto (
    codigo_aeropuerto VARCHAR(20) PRIMARY KEY NOT NULL UNIQUE,
    nombre VARCHAR(100),
    localidad VARCHAR(50),
    pais VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS Vuelo (
    id_vuelo INT PRIMARY KEY AUTO_INCREMENT,
    hora_salida TIME,
    hora_llegada TIME,
    fk_id_avion INT,
    fk_codigo_aeropuerto_salida VARCHAR(20),
    fk_codigo_aeropuerto_llegada VARCHAR(20),
    FOREIGN KEY (fk_id_avion)
        REFERENCES Avion (id_avion)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (fk_codigo_aeropuerto_salida)
        REFERENCES Aeropuerto (codigo_aeropuerto)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (fk_codigo_aeropuerto_llegada)
        REFERENCES Aeropuerto (codigo_aeropuerto)
        ON DELETE CASCADE ON UPDATE CASCADE
);

-- INSERTS--

-- Cliente--------------------------------------------------------------------------------------------------------------------------------------------------------------

insert into Cliente (DNI, nombre, apellidos, direccion, telefono, tarjeta_credito) values ('505926637-0', 'Anestassia', 'Davidi', 'Apt 1135', '275 856 0460', '3535527191974963');
insert into Cliente (DNI, nombre, apellidos, direccion, telefono, tarjeta_credito) values ('720727527-7', 'Ollie', 'Eagles', 'PO Box 90078', '213 311 9795', '3559145931642807');
insert into Cliente (DNI, nombre, apellidos, direccion, telefono, tarjeta_credito) values ('236753658-9', 'Kelsy', 'Polack', 'Suite 76', '234 232 8217', '30531877719607');
insert into Cliente (DNI, nombre, apellidos, direccion, telefono, tarjeta_credito) values ('315006887-8', 'Dulce', 'Sheriff', 'Room 784', '376 400 9340', '3562303824772869');
insert into Cliente (DNI, nombre, apellidos, direccion, telefono, tarjeta_credito) values ('013629936-9', 'Annabella', 'Ranscombe','Apt 1864', '735 164 7118', '30313202215043');
insert into Cliente (DNI, nombre, apellidos, direccion, telefono, tarjeta_credito) values ('125637575-6', 'Klarrisa', 'Sneddon','PO Box 73436', '205 798 6077', '5007666314185141');
insert into Cliente (DNI, nombre, apellidos, direccion, telefono, tarjeta_credito) values ('262378122-2', 'Nanci', 'Ferbrache', '19th Floor', '498 572 1562', '5108754292233642');
insert into Cliente (DNI, nombre, apellidos, direccion, telefono, tarjeta_credito) values ('191024249-7', 'Ingunna', 'Elby', 'Apt 1807', '783 415 6474', '3588103500250333');
insert into Cliente (DNI, nombre, apellidos, direccion, telefono, tarjeta_credito) values ('445677483-5', 'Debor', 'Crouch', 'Suite 45', '790 337 2503', '3572750383814219');
insert into Cliente (DNI, nombre, apellidos, direccion, telefono, tarjeta_credito) values ('227901996-5', 'Ilene', 'Stollberg', 'Apt 710', '767 885 2616', '4844970413621968');

-- Avion--------------------------------------------------------------------------------------------------------------------------------------------------------------

insert into Avion (num_plazas) values ('150');
insert into Avion (num_plazas) values ('200');
insert into Avion (num_plazas) values ('120');
insert into Avion (num_plazas) values ('300');
insert into Avion (num_plazas) values ('250');
insert into Avion (num_plazas) values ('200');
insert into Avion (num_plazas) values ('150');
insert into Avion (num_plazas) values ('250');
insert into Avion (num_plazas) values ('300');
insert into Avion (num_plazas) values ('450');

-- Asiento--------------------------------------------------------------------------------------------------------------------------------------------------------------

insert into Asiento (id_asiento, fila, puerta, fk_id_avion) values ('558', '9-A', '1', 1);
insert into Asiento (id_asiento, fila, puerta, fk_id_avion) values ('735', '7-A', '2', 2);
insert into Asiento (id_asiento, fila, puerta, fk_id_avion) values ('546', '8-A', '9', 3);
insert into Asiento (id_asiento, fila, puerta, fk_id_avion) values ('406', '2-A', '8', 4);
insert into Asiento (id_asiento, fila, puerta, fk_id_avion) values ('991', '1-A', '7', 5);
insert into Asiento (id_asiento, fila, puerta, fk_id_avion) values ('569', '5-A', '6', 6);
insert into Asiento (id_asiento, fila, puerta, fk_id_avion) values ('601', '2-A', '5', 7);
insert into Asiento (id_asiento, fila, puerta, fk_id_avion) values ('223', '4-A', '4', 8);
insert into Asiento (id_asiento, fila, puerta, fk_id_avion) values ('611', '8-A', '3', 9);
insert into Asiento (id_asiento, fila, puerta, fk_id_avion) values ('425', '0-A', '2', 10);

-- Tarjeta_Embarque--------------------------------------------------------------------------------------------------------------------------------------------------------------

insert into Tarjeta_Embarque (fk_DNI_cliente, fk_id_asiento, num_reserva, fecha) values ('505926637-0', '558', '934', '2024-07-30');
insert into Tarjeta_Embarque (fk_DNI_cliente, fk_id_asiento, num_reserva, fecha) values ('720727527-7', '735', '680', '2026-10-28');
insert into Tarjeta_Embarque (fk_DNI_cliente, fk_id_asiento, num_reserva, fecha) values ('236753658-9', '546', '767', '2025-09-09');
insert into Tarjeta_Embarque (fk_DNI_cliente, fk_id_asiento, num_reserva, fecha) values ('315006887-8', '406', '991', '2024-04-17');
insert into Tarjeta_Embarque (fk_DNI_cliente, fk_id_asiento, num_reserva, fecha) values ('013629936-9', '991', '829', '2027-08-05');
insert into Tarjeta_Embarque (fk_DNI_cliente, fk_id_asiento, num_reserva, fecha) values ('125637575-6', '569', '048', '2027-10-19');
insert into Tarjeta_Embarque (fk_DNI_cliente, fk_id_asiento, num_reserva, fecha) values ('262378122-2', '601', '393', '2026-06-26');
insert into Tarjeta_Embarque (fk_DNI_cliente, fk_id_asiento, num_reserva, fecha) values ('191024249-7', '223', '150', '2028-05-20');
insert into Tarjeta_Embarque (fk_DNI_cliente, fk_id_asiento, num_reserva, fecha) values ('445677483-5', '611', '582', '2026-01-29');
insert into Tarjeta_Embarque (fk_DNI_cliente, fk_id_asiento, num_reserva, fecha) values ('227901996-5', '425', '328', '2028-06-29');

-- Aeropuerto--------------------------------------------------------------------------------------------------------------------------------------------------------------

insert into Aeropuerto (codigo_aeropuerto, nombre, localidad, pais) values ('GPO', 'General Pico Airport', 'General Pico', 'AR');
insert into Aeropuerto (codigo_aeropuerto, nombre, localidad, pais) values ('KWA', 'Bucholz Army Air Field', 'Kwajalein', 'MH');
insert into Aeropuerto (codigo_aeropuerto, nombre, localidad, pais) values ('ASA', 'Assab International Airport', 'Asab', 'ER');
insert into Aeropuerto (codigo_aeropuerto, nombre, localidad, pais) values ('HGO', 'Korhogo Airport', 'Korhogo', 'CI');
insert into Aeropuerto (codigo_aeropuerto, nombre, localidad, pais) values ('GZT', 'Gaziantep International Airport', 'Gaziantep', 'TR');
insert into Aeropuerto (codigo_aeropuerto, nombre, localidad, pais) values ('MRU', 'Sir Seewoosagur Ramgoolam International Airport', 'Port Louis', 'MU');
insert into Aeropuerto (codigo_aeropuerto, nombre, localidad, pais) values ('GCW', 'Grand Canyon West Airport', 'Peach Springs', 'US');
insert into Aeropuerto (codigo_aeropuerto, nombre, localidad, pais) values ('AJU', 'Santa Maria Airport', 'Aracaju', 'BR');
insert into Aeropuerto (codigo_aeropuerto, nombre, localidad, pais) values ('UIO', 'Mariscal Sucre International Airport', 'Quito', 'EC');
insert into Aeropuerto (codigo_aeropuerto, nombre, localidad, pais) values ('DKI', 'Dunk Island Airport', 'Dunk Island', 'AU');

-- Vuelo--------------------------------------------------------------------------------------------------------------------------------------------------------------

insert into Vuelo (hora_salida, hora_llegada, fk_id_avion, fk_codigo_aeropuerto_salida, fk_codigo_aeropuerto_llegada) values ('3:17', '1:52', 1, 'GPO', 'DKI');
insert into Vuelo (hora_salida, hora_llegada, fk_id_avion, fk_codigo_aeropuerto_salida, fk_codigo_aeropuerto_llegada) values ('4:17', '7:46', 2, 'KWA', 'UIO');
insert into Vuelo (hora_salida, hora_llegada, fk_id_avion, fk_codigo_aeropuerto_salida, fk_codigo_aeropuerto_llegada) values ('3:08', '4:41', 3, 'ASA','AJU');
insert into Vuelo (hora_salida, hora_llegada, fk_id_avion, fk_codigo_aeropuerto_salida, fk_codigo_aeropuerto_llegada) values ('5:18', '3:47', 4, 'HGO', 'GCW');
insert into Vuelo (hora_salida, hora_llegada, fk_id_avion, fk_codigo_aeropuerto_salida, fk_codigo_aeropuerto_llegada) values ('5:39', '10:27', 5, 'GZT', 'MRU');
insert into Vuelo (hora_salida, hora_llegada, fk_id_avion, fk_codigo_aeropuerto_salida, fk_codigo_aeropuerto_llegada) values ('9:49', '4:39', 6, 'MRU', 'GZT');
insert into Vuelo (hora_salida, hora_llegada, fk_id_avion, fk_codigo_aeropuerto_salida, fk_codigo_aeropuerto_llegada) values ('9:08', '10:31', 7, 'GCW', 'HGO');
insert into Vuelo (hora_salida, hora_llegada, fk_id_avion, fk_codigo_aeropuerto_salida, fk_codigo_aeropuerto_llegada) values ('8:34', '4:12', 8, 'AJU', 'ASA');
insert into Vuelo (hora_salida, hora_llegada, fk_id_avion, fk_codigo_aeropuerto_salida, fk_codigo_aeropuerto_llegada) values ('10:27', '4:11', 9, 'UIO', 'KWA');
insert into Vuelo (hora_salida, hora_llegada, fk_id_avion, fk_codigo_aeropuerto_salida, fk_codigo_aeropuerto_llegada) values ('2:23', '3:15', 10, 'DKI', 'GPO');

-- UPDATES--
UPDATE Cliente
SET 
    direccion = 'Apt 435'
WHERE
    DNI = '236753658-9';
   
UPDATE Avion 
SET 
    num_plazas = '220'
WHERE
    id_avion = 2;
    
UPDATE Asiento 
SET 
    fila = '4-B'
WHERE
    id_asiento = '425';
   
 UPDATE Tarjeta_Embarque 
SET 
    fecha = '2026-11-15'
WHERE
    id_tarjeta_embarque = '3';  
    
    UPDATE Vuelo 
SET 
    hora_salida = '11:15'
WHERE
    id_vuelo = '9'; 
    
-- DELETES--
DELETE FROM Cliente 
WHERE
    DNI = '236753658-9';
    
DELETE FROM Avion 
WHERE
    id_avion = 5;

DELETE FROM Tarjeta_Embarque 
WHERE
    id_tarjeta_embarque = 3;