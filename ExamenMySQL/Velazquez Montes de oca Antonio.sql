create database if not exists Hostpital;
use Hospital;
//es una base de datos que reguistra pacientes//  
create table if not exists Medicamentos(
    Medicamento_id integer unsigned primary key not null auto_increment,
    Tipo_Medicamento varchar(15) not null,
	Nombre_Medicamento varchar(30) not null
)charset=utf8mb4;

create table if not exists Receta(
    Receta_id integer unsigned primary key not null auto_increment,
    Medicamento_id integer unsigned not null,
    foreign key (Medicamento_id) references Medicamentos(Medicamento_id)
)charset=utf8mb4;

create table if not exists DatosDoctor(
    Doctor_id integer unsigned primary key not null auto_increment,
    Cedula_Profesional integer(30) not null,
    Nombre varchar(15) not null,
    Celular integer(10) not null,
	CURP varchar(18) not null,
	RFC varchar(15) not null,
    Activated Tinyint(1),
)charset=utf8mb4;

create table if not exists Paciente(
    Paciente_id integer unsigned primary key not null auto_increment,
    NNS integer(11) not null,
    Nombre varchar(15) not null,
    Edad integer(2) not null,
	CURP varchar(18) not null,
	Género enum('M','F','NP') not null,
    Activated Tinyint(1),
)charset=utf8mb4;

create table if not exists ServicioMedico(
	ServicioMedico_id integer unsigned primary key not null auto_increment,
    Paciente_id integer unsigned not null,
    Receta_id integer unsigned not null,
    Doctor_id integer unsigned not null,
    Fecha_consulta datetime,
    foreign key (Paciente_id) references Paciente(Paciente_id),
    foreign key (Receta_id) references Receta(Receta_id),
    foreign key (Doctor_id) references Medicamentos(Medicamento_id)    
)charset=utf8mb4;

