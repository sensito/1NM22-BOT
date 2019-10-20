#Taller Mecanico 

drop database if exists TallerMecanico;
CREATE DATABASE TallerMecanico;
USE TallerMecanico;

CREATE TABLE Taller(
Taller_id int NOT NULL primary KEY auto_increment,
Nom_Taller varchar (15),
Tel_Taller varchar (15),
Direcc_Taller varchar (30));


CREATE TABLE Clientes(
Cliente_id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
Nombre_Cliente varchar (20),
Telefono  varchar (15), 
Direccion varchar (30), 
Sexo varchar (10),
Edad varchar (3),
Foreign key (Taller_id) references Taller ); 

CREATE TABLE Auto(
Auto_id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
Modelo varchar (15),
FOREIGN KEY (Clientes_id) references Clientes );

CREATE TABLE Trabajador(
Trabajador_id int NOT NULL primary KEY auto_increment,
Nombre_Trab varchar (20),
Tel_Trab varchar (15),
Sexo_trab varchar (10),
edad_trab varchar (3) 
FOREIGN KEY (Auto_id) references Auto );
