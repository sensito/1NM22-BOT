#Taller Mecánico
create database DBTaller;
use DBTaller;

create table tbContacto(
	idContacto int primary key not null,
    correo varchar(50) not null,
    telefono varchar(50) not null
);

create table tbMecanico(
	idMecanico int primary key not null,
    nombre varchar(30) not null,
    apPat varchar(30) not null,
    apMat varchar(30) not null,
    idContacto int not null,
    foreign key tbMecanico(idContacto) references tbContacto(idContacto)
);

create table tbAuto(
	idAuto int primary key not null,
    año int not null,
    modelo varchar(30),
    caracteristicas varchar(100)
);

create table tbCliente(
	idCliente int primary key not null,
	nombre varchar(30) not null,
    apPat varchar(30) not null,
    apMat varchar(30) not null,
    idContacto int not null,
    idAuto int not null,
    foreign key Contacto(idContacto) references tbContacto(idContacto),
    foreign key Auto(idAuto) references tbAuto(idAuto)
);

create table tbEstadoT(
	idEstadoT int primary key not null,
    Estado varchar(20) not null,
    Observaciones varchar(100)
);

create table tBTrabajosPendientes(
	idTrabajosPendientes int primary key not null,
    idAuto int not null,
    idCliente int not null,
    idMecanico int not null,
    fechaMax datetime not null,
    idEstadoT int not null,
    foreign key Auto(idAuto) references tbAuto(idAuto),
    foreign key Cliente(idCliente) references tbCliente(idCliente),
    foreign key Mecanico(idMecanico) references tbMecanico(idMecanico),
    foreign key Estado(idEstadoT) references tbEstadoT(idEstadoT)
);

create table tBTrabajosTerminados(
	idTrabajosTerminados int primary key not null,
    idAuto int not null,
    idCliente int not null,
    idMecanico int not null,
    fechaEntrega datetime not null,
    foreign key Auto(idAuto) references tbAuto(idAuto),
	foreign key Cliente(idCliente) references tbCliente(idCliente),
    foreign key Mecanico(idMecanico) references tbMecanico(idMecanico)
);

insert into tbAuto (idAuto, Año, Modelo, Caracteristicas) 
values (1,2000, "Impala","Verde");

select * from tbAuto;
