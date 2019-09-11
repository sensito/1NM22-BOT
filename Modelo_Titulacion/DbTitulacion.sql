create database dbTitulacion;
use dbTitulacion;

create table tbContacto(
	id_contacto int primary key,
    telefono int(10),
    correo varchar (50)
);

create table tbAlumnos(
	id_boleta int not null primary key,
    nombre varchar(30) not null,
    ap_Pat varchar(30) not null,
    ap_Mat varchar(30) not null,
    contacto int not null,
    foreign key(contacto) references tbContacto(id_contacto)
);

create table tbTipo_receptor(
	id_tipoR int not null primary key,
	descripcion boolean
);

create table tbReceptor_Documentos(
	id_receptor int not null primary key,
	nombre varchar(30) not null,
    ap_Pat varchar(30) not null,
    ap_Mat varchar(30) not null,    
    tipo_receptor int not null,
    foreign key(tipo_receptor) references tbTipo_receptor(id_tipoR)
);

create table tbForma_titulacion(
	idForma_Titulacion int not null primary key,
    descripcion varchar(50)
);

create table tbDocumentos(
	id_Doc int primary key not null,
    descripcion varchar(50)
);

create table tbEdo_Docum(
	idEstado int primary key not null,
    id_Doc int,
    foreign key(id_Doc) references tbDocumentos(id_Doc)
);

create table tbDocumentacion(
	id_archivado int primary key not null,
    boleta int not null,
    idReceptor int not null,
    idForma_titulacion int not null,
    idEstado int not null,
    foreign key(boleta) references tbAlumnos(id_boleta),
    foreign key(idReceptor) references tbReceptor_Documentos(id_receptor),
    foreign key(idForma_titulacion) references tbForma_titulacion(idForma_Titulacion),
    foreign key(idEstado) references tbEdo_Docum(idEstado)
);