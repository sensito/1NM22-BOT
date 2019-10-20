#Hospital  
#¿Que es un negro en la nieve? un blanco perfecto! xd
DROP DATABASE IF EXISTS dbHospital;
CREATE DATABASE IF NOT EXISTS dbHospital;
USE dbHospital;

	create TABLE IF NOT EXISTS tbInfoDelPaciente(
		idpaciente INT NOT NULL PRIMARY KEY,
        nombre VARCHAR (15) not null,
        apellidopaterno VARCHAR (15) not null,
        apellidomaterno VARCHAR (15) not null,
        telefono INT (10) NOT NULL  
        )CHARSET=utf8mb4;	
        
	create table if not exists tbDoctores(
		idDoctor int not null primary key,
        nombre varchar (15) not null,
        apellidopaterno varchar (15) not null,
        apellidomaterno varchar (15) not null,
        especialidad int not null
        ) charset=utf8mb4;
        
    
    create table if not exists tbConsultas(
		idConsulta int not null primary key,
        paciente int not null,
        doctor int not null,
        fecha date not null,
        foreign key (paciente) references tbInfoDelPaciente(idpaciente),
        foreign key (doctor) references tbDoctores(idDoctor)
        ) charset=utf8mb4;
        
	
	create table if not exists tbPresentaciones(
		idPresentacion int not null primary key,
        nombre varchar (20) not null
        ) charset=utf8mb4;
    
    create table if not exists tbMedicinas(
		idMedicina int not null primary key,
        nombre varchar (20) not null,
        presentacion int not null,
        descripcion varchar (250) not null,
		foreign key (presentacion) references tbPresentaciones(idPresentacion)
        ) charset=utf8mb4;
        
	create table if not exists tbReceta(
		idReceta int not null primary key,
        paciente int not null,
        consulta int not null,
        medico int not null,
		medicina int not null,
        cantidad int not null,
        foreign key (paciente) references tbInfoDelPaciente(idpaciente),
        foreign key (consulta) references tbConsultas(idConsulta),
        foreign key (medico) references tbDoctores(idDoctor),
        foreign key (medicina) references tbPresentaciones(idPresentacion)
        )
         charset=utf8mb4;
        


