#taller mecanico
create database tallermecanico;
use tallermecanico

create table mecanico (
id_mecanico int (11) not null,
nombre varchar(50) not null,
especialidad varchar(25) not null,
primary key(id_mecanico)
); 

create table herrramientas(
Id-herramienta int(11)not null,
nombre varchar (25) not null,
primary key(id_herramienta)
);

 create table autos (
 id-autos int not null,
 modelo varchar(20) not null;
 color varchar(15) not null;
 primary key (id_autos)
 );