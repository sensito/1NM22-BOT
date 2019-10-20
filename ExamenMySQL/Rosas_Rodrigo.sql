 drop database if exists Ecommerce;
 create database Ecommerce;
 use Ecommerce;
 
 #E-COMMERCE 
 
 
 create table tblTipocont(
idTipocont int (11) primary key not null,
 tipo varchar (11) not null
 );
 
 insert into tblTipocont values (1,'correo');
 insert into tblTipocont values (2,'telefono');
 
 
 create table tblcontacto(
 idcontacto int (11) primary key not null,
 contacto varchar(15) not null,
 idtipocont int (11),
 foreign key (idTipocont) references tblTipocont(idTipocont)
 );
 
 insert into tblcontacto values (1,'pollo@gmail.com',1);
  insert into tblcontacto values (2,5523104578,2);
 
 
 create table tblVendedor(
 idVendedor int(11) primary key not null,
 ApellidoP varchar (11) not null,
 Nombre varchar(11) not null,
 idcontacto int (11) not null,
 foreign key (idcontacto) references tblcontacto(idcontacto)
 );
 
  insert into tblvendedor values (1,'Hacks','magicos',2);
 
 create table tblproducto(
 
 id_producto int (11) primary key not null,
 cosas varchar (15) not null,
 costo int (11) not null,
 idVendedor int (11) not null,
 
foreign key (idVendedor) references tblVendedor(idVendedor)
 
 );
 
  insert into tblproducto values (1,'PS4',7500,1);
 
  create table tblcliente(
  idCliente int(11) primary key not null,
  nombre varchar (15) not null,
  apellido varchar (15) not  null,
  idcontacto int (11) not null,
  foreign key (idcontacto) references tblcontacto(idcontacto)
  
  );
  
   insert into tblcliente values (1,'percutor','loco',1);
  