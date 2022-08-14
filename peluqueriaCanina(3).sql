create database peluqueria_canina;
use peluqueria_canina;

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
 
 
 
 


INSERT INTO dueno VALUES ( 23189987, 'Josefina', 'Bravo', 4782389, 'Chilaveth 2213');



INSERT INTO perros VALUES (10, 'chuwi', '2018-04-10' , 'macho', 23189987);


INSERT INTO historial VALUES (28, '2022-08-13', 10,'servicios/consultas', 10000);
