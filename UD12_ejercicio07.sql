drop database if exists ejercicio07_12;
create database if not exists ejercicio07_12;
use ejercicio07_12;

CREATE TABLE IF NOT EXISTS Departamento (
    id_departamento INT PRIMARY KEY AUTO_INCREMENT,
    nombre_departamento VARCHAR(255),
    coordinador VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS Contrato (
    id_contrato INT PRIMARY KEY AUTO_INCREMENT,
    fecha_inicio DATE,
    fecha_fin DATE
);

CREATE TABLE IF NOT EXISTS Nomina (
    id_nomina INT PRIMARY KEY AUTO_INCREMENT,
    fk_id_contrato INT,
    salario DOUBLE,
    FOREIGN KEY (fk_id_contrato)
        REFERENCES Contrato (id_contrato)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS Empleado (
    id_trabajador INT PRIMARY KEY AUTO_INCREMENT,
    fk_id_departamento INT,
    fk_id_responsable INT,
    fk_id_contrato INT,
    DNI VARCHAR(20),
    num_ss VARCHAR(20),
    nombre VARCHAR(255),
    apellidos VARCHAR(255),
    direccion VARCHAR(255),
    telefono VARCHAR(20),
    FOREIGN KEY (fk_id_departamento)
        REFERENCES Departamento (id_departamento)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (fk_id_responsable)
        REFERENCES Empleado (id_trabajador)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (fk_id_contrato)
        REFERENCES Contrato (id_contrato)
        ON DELETE CASCADE ON UPDATE CASCADE
);

-- INSERTS --
-- Departamento ------------------------------------------------------------------------------------------------------------------------------------------------------------------------
insert into Departamento (nombre_departamento, coordinador) values ('Services', 'Mauricio Yuille');
insert into Departamento (nombre_departamento, coordinador) values ('Services', 'Mauricio Yuille');
insert into Departamento (nombre_departamento, coordinador) values ('Research and Development', 'Shadow Stamp');
insert into Departamento (nombre_departamento, coordinador) values ('Human Resources', 'Mauricio Yuille');
insert into Departamento (nombre_departamento, coordinador) values ('Accounting', 'Mauricio Yuille');
insert into Departamento (nombre_departamento, coordinador) values ('Human Resources', 'Mauricio Yuille');
insert into Departamento (nombre_departamento, coordinador) values ('Product Management', 'Mauricio Yuille');
insert into Departamento (nombre_departamento, coordinador) values ('Marketing', 'Shadow Stamp');
insert into Departamento (nombre_departamento, coordinador) values ('Legal', 'Shadow Stamp');
insert into Departamento (nombre_departamento, coordinador) values ('Research and Development', 'Shadow Stamp');

-- Contrato ------------------------------------------------------------------------------------------------------------------------------------------------------------------------
insert into Contrato (fecha_inicio, fecha_fin) values ('2013-03-08', '2024-12-20');
insert into Contrato (fecha_inicio, fecha_fin) values ('2015-04-17', '2026-03-03');
insert into Contrato (fecha_inicio, fecha_fin) values ('2014-10-25', '2025-07-11');
insert into Contrato (fecha_inicio, fecha_fin) values ('2017-02-26', '2024-12-17');
insert into Contrato (fecha_inicio, fecha_fin) values ('2021-04-28', '2026-03-18');
insert into Contrato (fecha_inicio, fecha_fin) values ('2002-10-21', '2025-08-12');
insert into Contrato (fecha_inicio, fecha_fin) values ('2017-08-19', '2027-06-22');
insert into Contrato (fecha_inicio, fecha_fin) values ('2017-10-17', '2028-07-09');
insert into Contrato (fecha_inicio, fecha_fin) values ('2005-05-16', '2028-11-24');
insert into Contrato (fecha_inicio, fecha_fin) values ('2007-06-14', '2025-04-12');

-- Nomina ------------------------------------------------------------------------------------------------------------------------------------------------------------------------
insert into Nomina (fk_id_contrato, salario) values (1, 2730.86);
insert into Nomina (fk_id_contrato, salario) values (2, 1639.35);
insert into Nomina (fk_id_contrato, salario) values (3, 2248.09);
insert into Nomina (fk_id_contrato, salario) values (4, 4875.45);
insert into Nomina (fk_id_contrato, salario) values (5, 2850.52);
insert into Nomina (fk_id_contrato, salario) values (6, 1294.24);
insert into Nomina (fk_id_contrato, salario) values (7, 3448.82);
insert into Nomina (fk_id_contrato, salario) values (8, 3830.23);
insert into Nomina (fk_id_contrato, salario) values (9, 4827.22);
insert into Nomina (fk_id_contrato, salario) values (10, 1935.39);
  
    
-- Empleado ------------------------------------------------------------------------------------------------------------------------------------------------------------------------

insert into Empleado (fk_id_departamento, fk_id_contrato, DNI, num_ss, nombre, apellidos, direccion, telefono) values (1, 1, '082829587-5', '750-67-4819', 'Mauricio', 'Yuille', '1st Floor', '527 767 5250');
insert into Empleado (fk_id_departamento, fk_id_contrato, DNI, num_ss, nombre, apellidos, direccion, telefono) values (1, 2, '337678846-4', '761-12-8493', 'Gösta', 'de Grey', '14th Floor', '739 888 0209');
insert into Empleado (fk_id_departamento, fk_id_contrato, DNI, num_ss, nombre, apellidos, direccion, telefono) values (4, 3, '382236173-9', '619-65-1653', 'Dafnée', 'Lye', 'PO Box 73128', '217 822 6114');
insert into Empleado (fk_id_departamento, fk_id_contrato, DNI, num_ss, nombre, apellidos, direccion, telefono) values (5, 4, '880066794-5', '763-75-5042', 'Gösta', 'Valenti', 'Apt 1583', '119 322 6000');
insert into Empleado (fk_id_departamento, fk_id_contrato, DNI, num_ss, nombre, apellidos, direccion, telefono) values (4, 5, '196290210-2', '840-65-6786', 'Yénora', 'Berndt', 'PO Box 57046', '664 516 7412');
insert into Empleado (fk_id_departamento, fk_id_contrato, DNI, num_ss, nombre, apellidos, direccion, telefono) values (3, 6, '574122901-8', '792-06-3955', 'Béatrice', 'Dewsnap', 'Apt 994', '697 530 1123');
insert into Empleado (fk_id_departamento, fk_id_contrato, DNI, num_ss, nombre, apellidos, direccion, telefono) values (9, 7, '645335909-X', '731-10-2331', 'Esbjörn', 'Nellen', 'Room 410', '354 432 5476');
insert into Empleado (fk_id_departamento, fk_id_contrato, DNI, num_ss, nombre, apellidos, direccion, telefono) values (7, 8, '089444934-6', '267-80-5716', 'Maëlla', 'Davidek', '2nd Floor', '659 189 4404');
insert into Empleado (fk_id_departamento, fk_id_contrato, DNI, num_ss, nombre, apellidos, direccion, telefono) values (7, 9, '978503047-4', '795-61-5579', 'Edmée', 'Maron', 'Suite 1', '571 564 2718');
insert into Empleado (fk_id_departamento, fk_id_contrato, DNI, num_ss, nombre, apellidos, direccion, telefono) values (6, 10, '926182158-8', '322-50-6835', 'Shadow', 'Stamp', 'Room 1384', '157 313 1899');

-- UPDATES --

UPDATE Empleado 
SET 
    fk_id_responsable = 8
WHERE
    id_trabajador = 1;
    
    UPDATE Empleado 
SET 
    fk_id_responsable = 5
WHERE
    id_trabajador = 2;
    
UPDATE Empleado 
SET 
    fk_id_responsable = 8
WHERE
    id_trabajador = 3;
    
    UPDATE Empleado 
SET 
    fk_id_responsable = 8
WHERE
    id_trabajador = 4;
    
    UPDATE Empleado 
SET 
    fk_id_responsable = 8
WHERE
    id_trabajador = 5;
    
UPDATE Empleado 
SET 
    fk_id_responsable = 5
WHERE
    id_trabajador = 6;
    
    UPDATE Empleado
SET               
    fk_id_responsable = 3
WHERE
    id_trabajador = 7;
    
    UPDATE Empleado 
SET 
    fk_id_responsable = 5
WHERE
    id_trabajador = 8;
    
UPDATE Empleado 
SET 
    fk_id_responsable = 5
WHERE
    id_trabajador = 9;
    
    UPDATE Empleado 
SET 
    fk_id_responsable = 3
WHERE
    id_trabajador = 10;
    
-- DELETES --
DELETE FROM Empleado 
WHERE
    id_trabajador = 3;