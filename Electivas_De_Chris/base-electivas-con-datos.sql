drop database if exists dbElectivasChidas13;
CREATE DATABASE IF NOT EXISTS dbElectivasChidas13;
use dbElectivasChidas13;


#tablas forareas xd 




CREATE TABLE IF NOT EXISTS TipoActividad (
id_TipoActividad int(11) not null primary key,
TipoActividad varchar (12)  not null


)CHARSET=utf8mb4;
insert into TipoActividad values (1,'Cultural');
insert into TipoActividad values (2,'Deportiva');

CREATE TABLE IF NOT EXISTS tblProfesor  (
id_Profesor int(11) not null primary key,
Nombre varchar (11) not null,
ApellidoçPaterno varchar(10) not null,
ApeliidoMaterno varchar(10) not null 


)CHARSET=utf8mb4;
insert into tblprofesor values (1,'Carmen','Servin','Peña');
insert into tblprofesor values (2,'Alejandro','Orozco','Csineros');
insert into tblprofesor values (3,'Jonathan','Ruiz','Gonzales');
insert into tblprofesor values (4,'Abraham','Acosta','Sotelo');
insert into tblprofesor values (5,'Oscar','Espinoza','Becerril');
insert into tblprofesor values (6,'luisa','Jimenez','Rodriguez');
insert into tblprofesor values (7,'Sara','Meza','Santamaria');

insert into tblprofesor values (8,'Federico','Arroyo','prof');
insert into tblprofesor values (9,'Daniel','Jurrado','A');
insert into tblprofesor values (10,'Ignacio','Renteria','A');
insert into tblprofesor values (11,'Eduardo','Sanchez','S');
insert into tblprofesor values (12,'Oscar','Castillo','c');
insert into tblprofesor values (13,'Alejandro','Gallardo','c');
insert into tblprofesor values (14,'Gilberto','Briones','S');
insert into tblprofesor values (15,'Oscar','Osornio','R');

CREATE TABLE IF NOT EXISTS tblTipoContacto (
id_TipoContacto int(11) not null primary key,
Tipocontacto nvarchar (11) not null




)CHARSET=utf8mb4;
insert into tblTipoContacto values (1,'Correo');
insert into tblTipoContacto values (2,'Telefono');


CREATE TABLE IF NOT EXISTS tblContacto (
id_Contacto int(11) not null primary key,
Contacto nvarchar (27) not null,
id_TipoContacto int(11),
foreign key (id_TipoContacto) references tblTipoContacto (id_TipoContacto)
)CHARSET=utf8mb4;
insert into tblContacto values(1,'5512014578',2);
insert into tblContacto values(2,'552210201541',2);
insert into tblContacto values(3,'upiicsaElec@hotmail.com',1);
insert into tblContacto values(4,'upiicsaElec@hotmail.com',1);
insert into tblContacto values(5,'upiicsaElec@hotmail.com',1);
insert into tblContacto values(6,'551202140258',2);
insert into tblContacto values(7,'554101404741',2);
insert into tblContacto values(8,'556985215858',2);
insert into tblContacto values(9,'5550235695',2);
insert into tblContacto values(10,'upiicsaElec@hotmail.com',1);
insert into tblContacto values(11,'upiicsaElec@hotmail.com',1);
insert into tblContacto values(12,'5520147896',2);
insert into tblContacto values(13,'5566218741',2);
insert into tblContacto values(14,'upiicsaElec@hotmail.com',1);
insert into tblContacto values(15,'5241758746',2);



#tablas principales que no tienen relacion 





CREATE TABLE IF NOT EXISTS tblAlumnos  (
id_Almunos int (11) not null primary key,
Boleta int (11) not null,
NombreA varchar (11) not null,
ApellidoPaternoA varchar(10) not null,
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
insert tblRelProfContacto values (1,1,2);
insert tblRelProfContacto values (2,2,2);
insert tblRelProfContacto values (3,3,1);
insert tblRelProfContacto values (4,4,1);
insert tblRelProfContacto values (5,5,1);
insert tblRelProfContacto values (6,6,2);
insert tblRelProfContacto values (7,7,2);
insert tblRelProfContacto values (8,8,2);
insert tblRelProfContacto values (9,9,2);
insert tblRelProfContacto values (10,10,1);
insert tblRelProfContacto values (11,11,1);
insert tblRelProfContacto values (12,12,2);
insert tblRelProfContacto values (13,13,2);
insert tblRelProfContacto values (14,14,1);
insert tblRelProfContacto values (15,15,2);


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
Creditos double not null,
id_Profesor int(11),
id_TipoActividad int(11),


foreign key (id_Profesor) references tblProfesor(id_Profesor),
foreign key (id_TipoActividad) references TipoActividad (id_TipoActividad)

 
)CHARSET=utf8mb4;
insert into tblActividad values (1,'Danza',2,1,1);
insert into tblActividad values (2,'Bailes',1,2,1);
insert into tblActividad values (3,'Salsa',2,3,1);
insert into tblActividad values (4,'Piano',2,4,1);
insert into tblActividad values (5,'Cine Club',1,5,1);
insert into tblActividad values (6,'Canto',2,6,1);
insert into tblActividad values (7,'ArtesPlas',1,7,1);

insert into tblActividad values (8,'Act Fis',2,8,2);
insert into tblActividad values (9,'Remo',2,9,2);
insert into tblActividad values (10,'atletismo',1,10,2);
insert into tblActividad values (11,'Taekwondo',3,11,2);
insert into tblActividad values (12,'Soccer',1,12,2);
insert into tblActividad values (13,'Lucha O',2,13,2);
insert into tblActividad values (14,'Voley ball',1,14,2);
insert into tblActividad values (15,'Fisico C',2,15,2);



CREATE TABLE IF NOT EXISTS tblHorarios(
id_Horarios int(11) not null primary key,
HoraDeEtrada int(11) not null,
HoraDeSalida int(11)  not null,
Dia varchar(20) not null,
id_Actividad int (11),
foreign key (id_Actividad) references tblActividad (id_Actividad)

)CHARSET=utf8mb4;


insert into tblHorarios values (1,16,18,'lunes',1);
insert into tblHorarios values (2,12,14,'Mier y Vier',2);
insert into tblHorarios values (3,9,11,'Lun y Vier',3);
insert into tblHorarios values (4,14,16,'Lun y Jue',4);
insert into tblHorarios values (5,13,15,'Viernes',5);
insert into tblHorarios values (6,17,18,'Lunes',6);
insert into tblHorarios values (7,11,13,'Lun a mier',7);

insert into tblHorarios values (8,9,10,'Lunes',8);
insert into tblHorarios values (9,14,15,'Lun a Vier',9);
insert into tblHorarios values (10,12,14,'Lun a Vier',10);
insert into tblHorarios values (11,13,14,'Lun a mier',11);
insert into tblHorarios values (12,9,10,'lun a mier',12);
insert into tblHorarios values (13,17,19,'lun a mier',13);
insert into tblHorarios values (14,16,17,'Lun a mier',14);
insert into tblHorarios values (15,16,19,'Lun a mier',15);





CREATE TABLE IF NOT EXISTS tblRelAlumnoActividad (
id_TipoALActividad int(11) not null primary key,
id_Almunos int (11),
id_Actividad int (11),

foreign key (id_Almunos) references tblAlumnos (id_Almunos),
foreign key (id_Actividad) references tblActividad (id_Actividad)



)CHARSET=utf8mb4;
