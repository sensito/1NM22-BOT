USE Taller_Mecanico;

CREATE TABLE usario(
id_usuario int not null auto_increment,
Nombre varchar (40) not null,
Apellido_Paterno varchar (40) not null,
Apellido_Materno varchar (40) not null,
Telefono int (40) not null,
N_Carro varchar (40) not null,
PRIMARY KEY (id_usuario)
);