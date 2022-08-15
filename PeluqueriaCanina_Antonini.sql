#Nombre de los integrantes que  crearon las tablas e insertaron valores

# Antonini Carla


create database peluqueria_Canina;
use peluqueria_Canina;

CREATE TABLE dueno (
DNI int UNIQUE PRIMARY KEY,
nombre VARCHAR(250),
apellido VARCHAR(250),
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
Descripcion VARCHAR (500),
monto int ,
CONSTRAINT PRIMARY KEY (id_historial),
CONSTRAINT FOREIGN KEY (id_perro) REFERENCES perros (id_perro)
 );
 

/*
GOLDIE
*/
INSERT INTO historial VALUES (28, '2018-02-17', 18,'servicios/consultas', 0350);
INSERT INTO historial VALUES (29, '2018-02-22', 18,'servicios/consultas', 3460);
INSERT INTO historial VALUES (30, '2019-12-09', 18,'servicios/consultas', 12900);
INSERT INTO historial VALUES (31, '2019-12-13', 18,'servicios/consultas', 7800);
INSERT INTO historial VALUES (32, '2021-03-29', 18,'servicios/consultas', 8390);


select * from perros where id_perro = 18;
update perros SET fechaNacimiento = 2010-02-17
 
 
