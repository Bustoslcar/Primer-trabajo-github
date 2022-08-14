create database PeluqueriaCanina;
show databases;
use PeluqueriaCanina;

CREATE TABLE dueno (
DNI int not null,
nombre varchar (255),
apellido varchar (255),
telefono varchar (255),
direccion varchar (255),
primary key (DNI)
);

CREATE TABLE perros (
id_perro int not null auto_increment, 
nombre varchar (255),
fecha_nacimiento varchar (255),
sexo varchar (255),
dni_dueno int not null ,
primary key (id_perro),
foreign key (dni_dueno) references dueno (DNI)
);

CREATE TABLE historial (
id_historial int not null auto_increment,
fecha varchar (255),
id_perro int,
descripcion varchar (255),
monto float,
primary key (id_historial),
foreign key (id_perro) references perros (id_perro)
);

insert into dueno (DNI, nombre, apellido, telefono, direccion) values (36502344, 'Juan', 'Perez', '3521-434343', 'Avenida Velez Sarfield');
insert into perros (nombre, fecha_nacimiento, sexo, dni_dueno) values ( 'Pistacho', '21/03/2020', 'macho', 36502344);
insert into historial (fecha, id_perro, descripcion, monto) values ('21/05/2020', 1, 'Corte', 1500);

truncate table historial;
alter table historial auto_increment= 0;

select * from historial 