#ejercicio de comercio de walmart   E- Commerce
# González Pena Marcos


drop database if exists dbWalmart;

create database dbWalmart;


use dbWalmart;

Create table tblInventario(

		idInventario int(12) primary key not null,
        Nombre varchar(60) not null,
		Cantidad int (12) not null,
        Descripcion varchar(60) not null

);

Create table tblProducto(

		idProducto int(12) primary key not null,
        Nombre varchar(60) not null,
        Precio int (12) not null,
        idInventario int(12) not null,
        
        Foreign key (idInventario) references tblInventario (idInventario)
        
);


Create table tblCliente(

		idCliente int(12) primary key not null,
        Nombre varchar(60) not null,
        Apellido varchar(60) not null,
        RFC varchar(60) not null


);	


Create table tblFactura(

		idFactura int(12) primary key not null,
        idCliente int(12) not null,
        idVentas int(12)not null,
			
		Foreign key (idCliente) references tblCliente (idCliente),
		Foreign key (idVentas) references tblVentas (idVentas)
);	


Create table tblVentas(

		idVentas int(12) primary key not null,
		idProducto int(12) not null,
        
        Foreign key (idProducto) references tblProducto (idProducto)

);	



