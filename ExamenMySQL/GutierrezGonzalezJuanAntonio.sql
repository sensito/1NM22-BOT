#e-comerce
drop database if exists dbe-comerce;
create dbe-comerce;
create table vendedor;
create table producto;
create table comprador;
use dbe-comerce;
	
    create table vendedor{
    idvendedor int (11) primary key not null;
    nombre nvarchar (11) not null;
    apellido nvarchar (11) not null;
    e-mail nvarchar (11) not null;
    rfc nvarchar (11) not null;
    razon social nvarchar (11) not null;
    clave nvarchar(11) not null,
    foreing key (idvendedor) references table realcion(idrelacion);
    }
    
    create table relacion {
    idrelacion int (11) primary key not null;
    idvendedor int (11) foreing key not null;
    idproducto int (11) foreing key not null;
    }
    create table producto{
    }
    create table comprador{
    idcomprador int (11) primary key not null;
    e-mail nvarchar (11) not null;
    clave nvarchar(11) not null,
    foreing key (idpago) references table pago(idrelacion);
    }
     create table relacion comp-pro {
     }
        create table pago{
        }