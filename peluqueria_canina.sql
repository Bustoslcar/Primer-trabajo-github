#Nombre de los integrantes que  crearon las tablas e insertaron valores
Bustos Carla
Varela Daniel
Bravo Margarita
Bravo Damian
Bravo Sofia


create database peluqueria_canina;
use peliqueria_canina;

CREATE TABLE dueno (
DNI int UNIQUE PRIMARY KEY,
nombre VARCHAR(200),
apellido VARCHAR(200),
telefono int  NOT NULL,
direccion VARCHAR(200) NOT NULL
);

CREATE TABLE perros ( 
id_perro int ,
nombre VARCHAR(100),
fechaNacimiento DATE,
sexo VARCHAR (100),
DNI_dueno int NOT NULL,
CONSTRAINT PRIMARY KEY (id_perro),
CONSTRAINT FOREIGN KEY (DNI_dueno) REFERENCES dueno(DNI)
 );
 
CREATE TABLE historial ( 
id_historial int AUTO_INCREMENT,
fecha DATE,
id_perro int,
Descripcion VARCHAR (100),
monto int ,
CONSTRAINT PRIMARY KEY (id_historial),
CONSTRAINT FOREIGN KEY (id_perro) REFERENCES perros (id_perro)
 );
 

INSERT INTO dueno VALUES ( 28957346, 'Juan', 'Perez', 4789689, 'Belgrano 101');
INSERT INTO dueno VALUES ( 23546987, 'Maria', 'Perez', 4789689, 'Pueyrredon  811');
INSERT INTO dueno VALUES ( 48546987, 'Mario', 'Bross', 4789123, 'sarmiento   623');
INSERT INTO dueno VALUES ( 43548687, 'Ariel', 'Bustos', 477689, 'Alverdi  11');
INSERT INTO dueno VALUES ( 23189987, 'Josefina', 'Bravo', 4782389, 'Chilaveth 2213');
INSERT INTO dueno VALUES ( 37846987, 'Marianella', 'Varela', 4712389, 'Peña 3014');


INSERT INTO perros VALUES (13, 'Puppy', '2012-12-12' , 'macho', 28957346);
INSERT INTO perros VALUES (14, 'Fido', '2012-12-12' , 'macho', 23546987);
INSERT INTO perros VALUES (15, 'Lennon', '2022-07-20' , 'macho', 43548687);
INSERT INTO perros VALUES (16, 'Olivia', '2020-10-04' , 'femenino', 23189987);
INSERT INTO perros VALUES (17, 'Toto', '1990-05-19' , 'macho', 37846987);

/*
PUPPY
*/
INSERT INTO historial VALUES (1, '2013-01-01', 13,'servicios/consultas', 2350);
INSERT INTO historial VALUES (2, '2014-03-18', 13,'servicios/consultas', 5960);
INSERT INTO historial VALUES (3, '2016-10-01', 13,'servicios/consultas', 23000);
INSERT INTO historial VALUES (4, '2017-02-02', 13,'servicios/consultas', 1000);
INSERT INTO historial VALUES (5, '2022-04-10', 13,'servicios/consultas', 8900);
/*
FRIDA
*/
INSERT INTO historial VALUES (6, '2018-09-10', 13,'servicios/consultas', 2350);
INSERT INTO historial VALUES (7, '2018-11-22', 13,'servicios/consultas', 5960);
INSERT INTO historial VALUES (8, '2019-12-05', 13,'servicios/consultas', 23000);
INSERT INTO historial VALUES (9, '2020-08-04', 13,'servicios/consultas', 10200);
INSERT INTO historial VALUES (10, '2022-07-10', 13,'servicios/consultas', 8900);
/*
Lennon
*/
INSERT INTO historial VALUES (11, '2019-08-9', 13,'servicios/consultas', 9530);
INSERT INTO historial VALUES (12, '2021-08-05', 13,'servicios/consultas', 4120);
INSERT INTO historial VALUES (13, '2021-08-22', 13,'servicios/consultas', 4580);
INSERT INTO historial VALUES (14, '2021-09-10', 13,'servicios/consultas', 1500);
INSERT INTO historial VALUES (15, '2022-05-01', 13,'servicios/consultas', 890);
INSERT INTO historial VALUES (16, '2022-05-11', 13,'servicios/consultas', 7516);
INSERT INTO historial VALUES (17, '2022-07-15', 13,'servicios/consultas', 426);
/*
OLIVIA
*/
INSERT INTO historial VALUES (18, '2019-11-08', 16, 'servicios/consultas', 7510);
INSERT INTO historial VALUES (19, '2020-11-25', 16, 'servicios/consultas', 7960);
INSERT INTO historial VALUES (20, '2021-11-02', 16, 'servicios/consultas', 76180);
INSERT INTO historial VALUES (21, '2021-08-10', 16, 'servicios/consultas', 800);
INSERT INTO historial VALUES (22, '2022-10-15', 16, 'servicios/consultas', 4100);
/*
TOTO
*/
INSERT INTO historial VALUES (23, '2019-10-5', 17, 'servicios/consultas', 8520);
INSERT INTO historial VALUES (24, '2019-10-25', 17, 'servicios/consultas', 9510);
INSERT INTO historial VALUES (25, '2020-01-09', 17, 'servicios/consultas', 7530);
INSERT INTO historial VALUES (26, '2021-02-02', 17, 'servicios/consultas', 3570);
INSERT INTO historial VALUES (27, '2022-05-06', 17, 'servicios/consultas', 3570);
 
 
