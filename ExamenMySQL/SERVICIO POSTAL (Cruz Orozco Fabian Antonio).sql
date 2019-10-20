#SERVICIO POSTAL
create database serviciopostal;
use serviciopostal;
 
 

create table correo (
idcorreo int primary key,
mercancia int(15),
tipo de mercancia(25),
Sello(20),
Procedencia(15),
Destino(10) 
);

create table personal (
idpersonal int primary key,
repartidores int (10),
capturistas int (10),
);


create table transporte 
idtransoporte int primary key,
camionetas int (15),

idpersonal int foreign key,
repartidores int (15),
);
