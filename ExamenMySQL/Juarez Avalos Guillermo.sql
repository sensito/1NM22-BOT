#Taller Mecanico 
drop database if exists dbTallerMecanico;
CREATE database IF NOT EXISTS dbTallerMecanico;
use dbTallerMecanico;

	create table tbCliente{
		idCliente int not null primary key,
        Nombre char (10) not null,
        Paterno char (10) not null,
        Materno char (10) not null,
        Telefono int (10) not null,
        foreign key (idVehiculo), references dbTallerMecanico(tbCliente),
	}
    
    create table tbVehiculo{
		idVehiculo int not null primary key,
        Marca char not null,
        Modelo char not null,
        año int (4) not null,
        foreign key (idCliente), references dbTallerMecanico(tbCliente),
	}
    
    create table tbTrabajadores{
		idTrabajador int not null primary key,
        Nombre char (10) not null,
        Paterno char (10) not null,
        Materno char (10) not null,
	}