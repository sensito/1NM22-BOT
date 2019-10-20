#ServiciosPostales
create database ServicioPostal;
use ServicioPostal;

delete ServicioPostal;

create table Cartas
(
ID_Carta int primary key,
ID_Direccion int,
Nombre_Corresponsal varchar,
Nombre_Responsable  varchar,
Fecha date,
);

create table Direccion
(
ID_Direccion int primary key,
Calle varchar,
foreign key Fecha int,
foreign key Nombre_Corresponsal varchar,
foreign key Nombre_Responsable  varchar,

);

create table EstadoCarta
(
EstadoCarta int,
foreign key Nombre_Corresponsal varchar,
foreign key Nombre_Responsable varchar,


);