#E-Commerce
drop database  if exists dbEcommerce;
create dbEcommerce;
create table tblCompra
use dbEcommerce;

	create table tbcompra(
		idCompra int(11) primary key not null;
		Producto nvarchar() not null;
		Precio int(11) not null;
		Marca int(11) not null;
		foreign key(idCompra)