-- Servicio Postal
drop database if exists Servicio_Postal;
create database Servico_Postal;
use Servicio_Postal;

create table Clientes(
id_Clientes not null primary key,
Nombre_Clientes Varchar (15),
Numero_Clientes varchar (15),
Direccion_Clientes Varchar (15),
Referencias_Clientes varchar (15),

);

create table Paquetes(
id_Paquetes not null,
Numero_Paquetes Varchar (15),
Tipo_Paquetes Varchar (15),



id_Cliente foreign key);

create table Envios(
id_Envios not null,
Numero_Envios Varchar (15),
Tipo_Envios Varchar (15),
Origen_Envios varchar (15),
Destino_Envios varchar (15),



id_Cliente foreign key);

create table Entregas(
id_Entregas not null,
Numero_Entregas Varchar (15),
Tipo_Entregas Varchar (15),
Origen_Entregas varchar (15),
Destino_Entregas varchar (15),



id_Cliente foreign key);




delete table id_Envios(
);

delete table id_Entregas(
);

select table id_Paquetes (
);

select table id_Envios (
);

select table id_Entregas (
);

update table id_Clientes (
);

update table id_Envios (
);

update table id_Entregas (
);