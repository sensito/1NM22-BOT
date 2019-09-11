drop database if exists dbElectivasChidas13;
CREATE DATABASE IF NOT EXISTS dbElectivasChidas13;
use dbElectivasChidas13;


#tablas forareas xd 




CREATE TABLE IF NOT EXISTS TipoActividad (
id_TipoActividad int(11) not null primary key,
TipoActividad varchar (6)  not null


)CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS tblProfesor  (
id_Profesor int(11) not null primary key,
Nombre varchar (11) not null,
ApellidoçPaterno varchar(10) not null,
ApeliidoMaterno varchar(10) not null 


)CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS tblTipoContacto (
id_TipoContacto int(11) not null primary key,
Tipocontacto nvarchar (11) not null




)CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS tblContacto (
id_Contacto int(11) not null primary key,
Contacto nvarchar (20) not null,
id_TipoContacto int(11),
foreign key (id_TipoContacto) references tblTipoContacto (id_TipoContacto)
)CHARSET=utf8mb4;

#tablas principales que no tienen relacion 





CREATE TABLE IF NOT EXISTS tblAlumnos  (
id_Almunos int (11) not null primary key,
Boleta int (11) not null,
NombreA varchar (11) not null,
ApellidoçPaternoA varchar(10) not null,
ApeliidoMaternoA varchar(10) not null,
CreditosOwned  double not null

)CHARSET=utf8mb4;



####muy aparte

CREATE TABLE IF NOT EXISTS tblRelProfContacto (
id_ProfContacto int(11) not null primary key,
id_Profesor int(11),
id_Contacto int(11),
foreign key (id_Profesor) references tblProfesor (id_Profesor),
foreign key (id_Contacto) references tblContacto (id_Contacto)



)CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS tblRelAlumnoContacto (
id_AlumnoContacto int(11) not null primary key,
id_Almunos int (11),
id_Contacto int(11),
foreign key (id_Almunos) references tblAlumnos (id_Almunos),
foreign key (id_Contacto) references tblContacto (id_Contacto)



)CHARSET=utf8mb4;



#CREATE TABLE IF NOT EXISTS RelContactoTipoContacto (
#id_ContactoTipoContacto int(11) not null primary key
#)CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS tblActividad  (
id_Actividad int (11) not null primary key,
Actividad varchar (11) not null,
Descripcion varchar (10) not null,
Creditos double not null,
id_Profesor int(11),
id_TipoActividad int(11),


foreign key (id_Profesor) references tblProfesor(id_Profesor),
foreign key (id_TipoActividad) references TipoActividad (id_TipoActividad)

 
)CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS tblHorarios(
id_Horarios int(11) not null primary key,
HoraDeEtrada time  not null,
HoraDeSalida time  not null,
Dia int (11) not null,
id_Actividad int (11),
foreign key (id_Actividad) references tblActividad (id_Actividad)

)CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS tblRelAlumnoActividad (
id_TipoALActividad int(11) not null primary key,
id_Almunos int (11),
id_Actividad int (11),

foreign key (id_Almunos) references tblAlumnos (id_Almunos),
foreign key (id_Actividad) references tblActividad (id_Actividad)



)CHARSET=utf8mb4;

 