#PTaller Mecanico 
drop database if exists dbTaller;
CREATE DATABASE IF NOT EXISTS dbTaller;
use dbTaller;

create table if not exists tblMecanico (

id_Mecanico int (11) not null primary key,
NombreA varchar (11) not null,
ApellidoçPaternoA varchar(10) not null,
ApeliidoMaternoA varchar(10) not null,
Experiencia int (11) not null


)CHARSET=utf8mb4;
 

create table if not exists tblCliente (


id_Cliente int (11) not null primary key,
NombreB varchar (11) not null,
ApellidoçPaternoB varchar(10) not null,
ApeliidoMaternoB varchar(10) not null

)CHARSET=utf8mb4;

create table if not exists tblMAlo (
id_Problema int (11) not null  primary key,
llantas int (11) not null,
motor  varchar (11),
puertas int (11) 



);

create table if not exists tblHerramientas (
id_Herramiento int (11) not null  primary key,
refacciones varchar (11) not null,
martillo int (11) not null




);




create table if not exists tblFinalizado (
id_Finalizado  int (11) not null  primary key,
problemaResuelto varchar (11) not null,
clienteFeliz int (11) not null




);

create table if not exists tblrelMecanicoCliente (
id_RelMECLi  int (11) not null  primary key,
id_Mecanico int (11),
id_Cliente int (11),
foreign key (id_Mecanico) references tblMecanico (id_Mecanico),
foreign key (id_Cliente) references tblCliente (id_Cliente)





);
insert into tblFinalizado values (1,2,3);


