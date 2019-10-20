# Taller Mecanico 
drop database If exists TallerMecanico 
CREATE DATABASE TallerMecanico;
USE TallerMecanico;

CREATE TABLE Mecanico (; 
IDMecanico INT NOT NULL PRIMARY KEY auto_increment 
Nombre_Mecanico Varchar (10),
Sexo Varchar (18) ,
Telefono Varchar (11),
DirecciondelTaller Varchar (50),
Foreign Key (IDMecanico) Reference Table Mececanico);

CREATE TABLE Cliente(
IDCliente INT NOT NUll, PRIMARY KEY auto_increment
Nombre_Cliente Varchar (10),
Telefono Varchar (11),
Direccion Varchar (12),
Sexo Varchar (18),
Edad Varchar (2),
Foreign Key (IDCliente) Reference Table Cliente );

Create TABLE Carro(
IDCarro INT NOT NULL, PRIMARY KEY auto_increment 
Añodelcarro Varchar (11), 
Modelodelcarro Varchar (50),
Matriculadelcarro Varchar (6),
 Foreign Key (IDCarro) Reference Table Carro );


