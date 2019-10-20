#Hospital-Areas
create database if not exists Hospital;
use Hospital;
 
create TABLE if not exists Especialidades(
Pacientes varchar(20) NOT NULL,
Atencion int(10)NOT NULL,
Encargado varchar(50)NOT NULL,
Externo varchar(10)NOT NULL,
Interno varchar(10)NOT NULL);

create table if not exists Personas(
Nombre varchar(20),
Apellido_Paterno varchar(20),
Apellido_Materno varchar(20),
Area_de_Atencion varchar(50),
Clinica_de_Procedencia int(10)) 