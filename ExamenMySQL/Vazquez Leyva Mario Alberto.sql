# Tabla de taller Mecánico

use taller_mecanico;

create table Cliente (
idcliente INT NOT NULL AUTO_INCREMENT,
Nombre(s) VARCHAR(20) NOT NULL,
Apellidos VARCHAR (20) NOT NULL,
Teléfono_Cel VARCHAR (10) NOT NULL,
PRIMARY KEY (idcliente)
); engine=InnoDB

create table Marca (
idmarca INT NOT NULL auto_increment,
Marca VARCHAR (20) NOT NULL,
Modelo VARCHAR (20) NOT NULL,
Placa VARCHAR (10) NOT NULL,
primary key (idmarca),
Constraint idcliente foreign key(idcliente),
references Cliente (idcliente),
); engine=InooDB

create table Mano de Obra (
idmo INT NOT NULL auto_increment,
Aparatos VARCHAR (20) NOT NULL,
Arreglos VARCHAR (20) NOT NULL,
Herramientas VARCHAR (50) NOT NULL,
primary key (idmarca),
Constraint idcliente foreign key(idcliente),
references Cliente (idcliente),
); engine=InooDB





