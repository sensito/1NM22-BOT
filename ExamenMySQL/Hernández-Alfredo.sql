#Servicio Postal
create database if not exists ServicioPostal;
use ServicioPostal;


create table if not exists SectorDistribucion(
   SectorDistrib_ID integer unsigned primary key not null auto_increment,
   Colonia_Ciudad varchar(20),
   DescripcionRuta varchar(100)
);

create table if not exists Vehiculo(
   Vehiculo_ID integer unsigned primary key not null auto_increment,
   
   TipoVehiculo varchar(12) not null,
   NumMatricula integer(8) not null,
   ModelVehiculo varchar(15) not null,
   Año integer(4) not null
);

create table if not exists Cartero(
   Cartero_ID integer unsigned primary key not null auto_increment,
   
   Nombre varchar(10) not null,
   ApellidoPaterno varchar(10) not null,
   ApellidoMaterno varchar(10) not null,
   Edad integer(2) not null,
   NomCiudad varchar(16) not null,
   NomColonia varchar(16) not null,
   Calle varchar(20) not null,
   NumExt integer(3) not null,
   Entregaxdia integer(4) not null,
   Activate int(1),
   
   Vehiculo_ID integer unsigned not null,
   SectorDistrib_ID integer unsigned not null,
   
   foreign key (SectorDistrib_ID) references SectorDistribucion (SectorDistrib_ID),
   foreign key (Vehiculo_ID) references Vehiculo (Vehiculo_ID)
);

create table if not exists Cliente(
   Cliente_ID integer unsigned primary key not null auto_increment,
   
   Nombre varchar(10) not null,
   ApellidoPaterno varchar(10) not null,
   ApellidoMaterno varchar(10) not null,
   Edad integer(2) not null,
   NomCiudad varchar(16) not null,
   NomColonia varchar(16) not null,
   Calle varchar(20) not null,
   NumExt integer(3) not null
);


create table if not exists Carta(
   Carta_ID integer unsigned primary key not null auto_increment,
   
   CiudadDest varchar(16) not null,
   ColoniaDest varchar(16) not null,
   CalleDest varchar(20) not null,
   NumExtDest integer(3) not null,
   
   Cliente_ID integer unsigned not null,
   foreign key (Cliente_ID) references Cliente (Cliente_ID)
);


create table if not exists ServPostal(
   NumEntrega_ID integer unsigned primary key not null auto_increment,
   
   Cartero_ID integer unsigned not null,
   Carta_ID integer unsigned not null,
   
   foreign key (Cartero_ID) references Cartero (Cartero_ID),
   foreign key (Carta_ID) references Carta (Carta_ID)
);


