drop database if exists ejercicio02_12;
create database if not exists ejercicio02_12;
use ejercicio02_12;

CREATE TABLE IF NOT EXISTS Empresa (
    CIF VARCHAR(20) PRIMARY KEY NOT NULL,
    direccion VARCHAR(255),
    telefono VARCHAR(12)
);

CREATE TABLE IF NOT EXISTS Alumno (
    DNI VARCHAR(20) PRIMARY KEY NOT NULL,
    nombre VARCHAR(255),
    apellidos VARCHAR(255),
    fk_empresa VARCHAR(20),
    direccion VARCHAR(255),
    telefono VARCHAR(12),
    fecha_nacimiento DATE,
    FOREIGN KEY (fk_empresa)
        REFERENCES Empresa (CIF)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS Profesor (
    DNI VARCHAR(20) PRIMARY KEY NOT NULL,
    nombre VARCHAR(255),
    apellidos VARCHAR(255),
    direccion VARCHAR(255),
    telefono VARCHAR(12)
);

CREATE TABLE IF NOT EXISTS DatosCurso (
    codigo VARCHAR(20) PRIMARY KEY NOT NULL,
    programa VARCHAR(255),
    duracion TIME,
    titulo VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS Curso (
    codigo VARCHAR(20) PRIMARY KEY NOT NULL,
    fk_programa VARCHAR(20),
    nombre VARCHAR(100),
    FOREIGN KEY (fk_programa)
        REFERENCES DatosCurso (codigo)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS Impartir (
    fk_DNI VARCHAR(20),
    fk_codigo VARCHAR(20),
    PRIMARY KEY (fk_DNI , fk_codigo),
    FOREIGN KEY (fk_DNI)
        REFERENCES Profesor (DNI)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (fk_codigo)
        REFERENCES Curso (codigo)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS Cursar (
    fk_DNI VARCHAR(20),
    fk_codigo VARCHAR(20),
    PRIMARY KEY (fk_DNI , fk_codigo),
    FOREIGN KEY (fk_codigo)
        REFERENCES Curso (codigo)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (fk_DNI)
        REFERENCES Alumno (DNI)
        ON DELETE CASCADE ON UPDATE CASCADE
);


-- INSERTS --

-- Empresa -----------------------------------------------------------------------------------------------------------------------------------------------------------------------

insert into Empresa (CIF, direccion, telefono) values ('660-76-3974', '20th Floor', '897 342 6991');
insert into Empresa (CIF, direccion, telefono) values ('743-89-4415', 'Apt 1979', '721 338 2658');
insert into Empresa (CIF, direccion, telefono) values ('363-21-0436', '9th Floor', '832 602 5286');
insert into Empresa (CIF, direccion, telefono) values ('115-69-0532', 'PO Box 89105', '238 612 7156');
insert into Empresa (CIF, direccion, telefono) values ('647-50-7543', 'PO Box 43264', '863 590 9821');
insert into Empresa (CIF, direccion, telefono) values ('481-42-3326', 'Suite 56', '991 162 7748');
insert into Empresa (CIF, direccion, telefono) values ('315-43-7867', 'Room 983', '915 415 7918');
insert into Empresa (CIF, direccion, telefono) values ('637-76-6949', 'Suite 23', '984 795 1614');
insert into Empresa (CIF, direccion, telefono) values ('748-21-5519', 'Apt 1967', '901 479 4000');
insert into Empresa (CIF, direccion, telefono) values ('833-31-5720', 'Suite 62', '203 196 9199');

-- Alumno ----------------------------------------------------------------------------------------------------------------------------------------------------------------------
insert into Alumno (DNI, nombre, apellidos, fk_empresa, direccion, telefono, fecha_nacimiento) values ('756-47-4874', 'Aimée', 'McInnes', '660-76-3974', 'PO Box 40956', '375 729 5981', '1986-12-11');
insert into Alumno (DNI, nombre, apellidos, fk_empresa, direccion, telefono, fecha_nacimiento) values ('490-55-3311', 'Måns', 'Figurski', '833-31-5720', '8th Floor', '319 546 1274', '1994-05-19');
insert into Alumno (DNI, nombre, apellidos, direccion, telefono, fecha_nacimiento) values ('188-36-6639', 'Séverine', 'Gantz', 'Room 977', '980 239 3743', '1997-12-03');
insert into Alumno (DNI, nombre, apellidos, direccion, telefono, fecha_nacimiento) values ('776-66-8257', 'Vénus', 'Minet', '9th Floor', '588 609 0941', '2000-01-24');
insert into Alumno (DNI, nombre, apellidos, fk_empresa, direccion, telefono, fecha_nacimiento) values ('490-86-3610', 'Irène', 'Beddow', '481-42-3326', 'PO Box 86185', '581 891 9778', '1991-11-24');
insert into Alumno (DNI, nombre, apellidos, fk_empresa, direccion, telefono, fecha_nacimiento) values ('345-96-4935', 'Estève', 'Arnoldi', '647-50-7543', 'Suite 96', '198 619 1890', '1971-07-23');
insert into Alumno (DNI, nombre, apellidos, direccion, telefono, fecha_nacimiento) values ('224-37-3350', 'Valérie', 'Zannutti', 'Apt 547', '143 723 4048', '2002-01-08');
insert into Alumno (DNI, nombre, apellidos, fk_empresa, direccion, telefono, fecha_nacimiento) values ('810-27-9355', 'Michèle', 'Berrick', '363-21-0436', 'Suite 29', '429 581 7674', '2001-10-01');
insert into Alumno (DNI, nombre, apellidos, fk_empresa, direccion, telefono, fecha_nacimiento) values ('278-41-8278', 'Torbjörn', 'Kleinplatz', '743-89-4415', 'PO Box 17928', '427 231 5323', '1970-12-08');
insert into Alumno (DNI, nombre, apellidos, direccion, telefono, fecha_nacimiento) values ('108-50-5992', 'Lauréna', 'Read', 'Suite 76', '409 234 1133', '1993-08-31');

-- Profesor -----------------------------------------------------------------------------------------------------------------------------------------------------------------------
insert into Profesor (DNI, nombre, apellidos, direccion, telefono) values ('227-32-4912', 'Cécilia', 'Impett', 'PO Box 41211', '760 911 4106');
insert into Profesor (DNI, nombre, apellidos, direccion, telefono) values ('815-48-0676', 'Aurélie', 'Janicek', 'PO Box 58224', '865 763 2408');
insert into Profesor (DNI, nombre, apellidos, direccion, telefono) values ('166-27-5472', 'Marie-hélène', 'Lettson', 'PO Box 554', '223 499 6769');
insert into Profesor (DNI, nombre, apellidos, direccion, telefono) values ('430-66-9430', 'Aurélie', 'Matzaitis', '18th Floor', '818 914 7715');
insert into Profesor (DNI, nombre, apellidos, direccion, telefono) values ('207-35-8085', 'Dù', 'Thornewell', 'PO Box 922', '512 710 6636');
insert into Profesor (DNI, nombre, apellidos, direccion, telefono) values ('251-19-1626', 'Maëly', 'Brigstock', '12th Floor', '584 605 2166');
insert into Profesor (DNI, nombre, apellidos, direccion, telefono) values ('298-94-3636', 'Bérangère', 'Leverette', 'PO Box 9637', '151 770 5219');
insert into Profesor (DNI, nombre, apellidos, direccion, telefono) values ('253-14-7527', 'Mén', 'Thurske', 'Suite 44', '250 541 0542');
insert into Profesor (DNI, nombre, apellidos, direccion, telefono) values ('405-99-6060', 'Kévina', 'Ginni', 'Room 1786', '761 790 6840');
insert into Profesor (DNI, nombre, apellidos, direccion, telefono) values ('857-52-5994', 'Anaëlle', 'Reinisch', 'Suite 15', '437 640 2519');

-- DatosCurso --------------------------------------------------------------------------------------------------------------------------------------------------------------------
insert into DatosCurso (codigo, programa, duracion, titulo) values ('597-15-9736', 'Mauris viverra diam vitae quam. Suspendisse potenti. Nullam porttitor lacus at turpis.', '12:44', 'Quality Control Specialist');
insert into DatosCurso (codigo, programa, duracion, titulo) values ('816-54-8862', 'Fusce posuere felis sed lacus.', '8:37', 'Chemical Engineer');
insert into DatosCurso (codigo, programa, duracion, titulo) values ('626-14-5481', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl.', '13:04', 'Chemical Engineer');
insert into DatosCurso (codigo, programa, duracion, titulo) values ('469-51-0868', 'Donec posuere metus vitae ipsum.', '14:43', 'Automation Specialist II');
insert into DatosCurso (codigo, programa, duracion, titulo) values ('829-15-4524', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', '15:57', 'Actuary');
insert into DatosCurso (codigo, programa, duracion, titulo) values ('172-86-9048', 'Integer ac neque. Duis bibendum. Morbi non quam nec dui luctus rutrum.', '16:01', 'Pharmacist');
insert into DatosCurso (codigo, programa, duracion, titulo) values ('888-92-5918', 'In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat.', '9:23', 'Legal Assistant');
insert into DatosCurso (codigo, programa, duracion, titulo) values ('898-30-9339', 'Duis mattis egestas metus. Aenean fermentum.', '14:12', 'Statistician II');
insert into DatosCurso (codigo, programa, duracion, titulo) values ('877-11-3023', 'Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa.', '15:34', 'Technical Writer');
insert into DatosCurso (codigo, programa, duracion, titulo) values ('293-80-6738', 'Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', '15:43', 'Product Engineer');

-- Curso ------------------------------------------------------------------------------------------------------------------------------------------------------------------------
insert into Curso (codigo, fk_programa, nombre) values ('639-09-0114', '626-14-5481', 'Social Worker');
insert into Curso (codigo, fk_programa, nombre) values ('431-61-3128', '829-15-4524', 'Help Desk Technician');
insert into Curso (codigo, fk_programa, nombre) values ('156-79-1824', '469-51-0868', 'Pharmacist');
insert into Curso (codigo, fk_programa, nombre) values ('168-90-0140', '888-92-5918', 'VP Marketing');
insert into Curso (codigo, fk_programa, nombre) values ('161-67-0192', '898-30-9339','Food Chemist');
insert into Curso (codigo, fk_programa, nombre) values ('150-91-0334', '829-15-4524', 'Food Chemist');
insert into Curso (codigo, fk_programa, nombre) values ('112-96-4449', '888-92-5918', 'Software Consultant');
insert into Curso (codigo, fk_programa, nombre) values ('321-38-0658', '877-11-3023', 'Health Coach II');
insert into Curso (codigo, fk_programa, nombre) values ('577-53-7528', '898-30-9339', 'Assistant Professor');
insert into Curso (codigo, fk_programa, nombre) values ('499-15-5588', '293-80-6738', 'Pharmacist');

-- Cursar ------------------------------------------------------------------------------------------------------------------------------------------------------------------------
insert into Cursar (fk_DNI, fk_codigo) values ('756-47-4874', '639-09-0114');
insert into Cursar (fk_DNI, fk_codigo) values ('490-55-3311', '431-61-3128');
insert into Cursar (fk_DNI, fk_codigo) values ('188-36-6639', '156-79-1824');
insert into Cursar (fk_DNI, fk_codigo) values ('776-66-8257', '168-90-0140');
insert into Cursar (fk_DNI, fk_codigo) values ('490-86-3610', '161-67-0192');
insert into Cursar (fk_DNI, fk_codigo) values ('345-96-4935', '150-91-0334');
insert into Cursar (fk_DNI, fk_codigo) values ('224-37-3350', '112-96-4449');
insert into Cursar (fk_DNI, fk_codigo) values ('810-27-9355', '321-38-0658');
insert into Cursar (fk_DNI, fk_codigo) values ('278-41-8278', '577-53-7528');
insert into Cursar (fk_DNI, fk_codigo) values ('108-50-5992', '499-15-5588');

-- Impartir ------------------------------------------------------------------------------------------------------------------------------------------------------------------------
insert into Impartir (fk_DNI, fk_codigo) values ('227-32-4912', '639-09-0114');
insert into Impartir (fk_DNI, fk_codigo) values ('815-48-0676', '431-61-3128');
insert into Impartir (fk_DNI, fk_codigo) values ('166-27-5472', '156-79-1824');
insert into Impartir (fk_DNI, fk_codigo) values ('430-66-9430', '168-90-0140');
insert into Impartir (fk_DNI, fk_codigo) values ('207-35-8085', '161-67-0192');
insert into Impartir (fk_DNI, fk_codigo) values ('251-19-1626', '150-91-0334');
insert into Impartir (fk_DNI, fk_codigo) values ('298-94-3636', '112-96-4449');
insert into Impartir (fk_DNI, fk_codigo) values ('253-14-7527', '321-38-0658');
insert into Impartir (fk_DNI, fk_codigo) values ('405-99-6060', '577-53-7528');
insert into Impartir (fk_DNI, fk_codigo) values ('857-52-5994', '499-15-5588');


-- UPDATES --

UPDATE Empresa SET direccion = "8th Floor" WHERE CIF = '363-21-0436';
UPDATE Alumno SET fk_empresa = NULL WHERE fk_empresa = '660-76-3974';
UPDATE Profesor SET telefono = '866 776 2482' WHERE DNI = '166-27-5472';

-- DELETES --

DELETE FROM Alumno WHERE DNI = '188-36-6639';
DELETE FROM Profesor WHERE DNI = '298-94-3636';