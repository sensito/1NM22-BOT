drop database if exists dbBiblioteca;
create database dbBiblioteca;
use dbBiblioteca;
set SQL_SAFE_UPDATES = 0;
create table tblClase(

	idClase int(11) primary key not null,
    Clase nvarchar(60) not null

);

insert into tblClase values(1, 'Poema');
insert into tblClase values(2, 'Cuento');

create table tblEditorial(

	idEditorial int(11) primary key not null,
    Editorial nvarchar(60) not null

);

insert into tblEditorial values(1, 'AlfaOmega');


create table tblLibro(

	idLibro int(11) primary key not null,
    Titulo nvarchar(60) not null,
    NoHojas int(11) not null,
    Edicion int(11) not null,
    AnoPublicacion year not null,
    idEditorial int(11) not null,
    idClase int(11) not null,
    foreign key (idEditorial) references tblEditorial(idEditorial),
    foreign key (idClase) references tblClase(idClase)

);
insert into tblLibro values(1,'El Libro Vaquero',99,3,'1999',1,1);
create table tblAutor(

	idAutor int(11) primary key not null,
    NombreA nvarchar(60) not null,
    ApellidoPA nvarchar(60) not null,
    ApellidoMA nvarchar(60) not null

);

create table tblrelAutorLibro(

	idrelAutorLibro int(11) primary key not null,
    idAutor int(11) not null,
    idLibro int(11) not null,
    foreign key (idAutor) references tblAutor(idAutor),
    foreign key (idLibro) references tblLibro(idLibro)

);

create table tblTipoPersona(

	idTipoPersona int(11) primary key not null,
    TipoPersona nvarchar(60) not null

);

create table tblPersona(

	idPersona int(11) primary key not null,
    NombreP nvarchar(60) not null,
    ApellidoP nvarchar(60) not null,
    ApellidoM nvarchar(60) not null,
    idTipoPersona int(11) not null,
    foreign key (idTipoPersona) references tblTipoPersona(idTipoPersona)

);

create table tblTipoContacto(

	idTipoContacto int(11) primary key not null,
    TipoContacto nvarchar(60) not null

);

create table tblContacto(

	idContacto int(11) primary key not null,
    Contacto nvarchar(60) not null,
    idTipoContacto int(11) not null,
    foreign key (idTipoContacto) references tblTipoContacto(idTipoContacto)

);

create table tblrelPersonaContacto(

	idrelPersonaContacto int(11) primary key not null,
    idPersona int(11) not null,
    idContacto int(11) not null,
    foreign key (idPersona) references tblPersona(idPersona),
    foreign key (idContacto) references tblcontacto(idContacto)

);

create table tblPrestamo(

	idPrestamo int(11) primary key not null,
    fechaPrestamo date not null,
    FechaVuelta date not null,
    idPersona int(11) not null,
    idPrestamista int(11) not null,
    idLibro int(11) not null,
    foreign key (idPersona) references tblPersona(idPersona),
    foreign key (idPrestamista) references tblPersona(idPersona),
    foreign key (idLibro) references tblLibro(idLibro)

);
