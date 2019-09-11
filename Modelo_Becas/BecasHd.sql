
drop database if exists dbBecas;
Create database dbBecas;

Use dbBecas;

Create table tblTutor(

        idTutor int(11) primary key not null,
        Nombre varchar(60) not null,
        Correo varchar(60) not null,
        Materia varchar(60) not null
        
);

Create table tblAlumno(

       idAlumno int(11) primary key not null,
       Nombre varchar(60) not null,
       Edad varchar(60) not null,
       Correo varchar(60) not null,
       Promedio int(11) not null,
       idTutor int(11) not null,
	foreign key (idTutor) references tblTutor (idTutor)

);

Create table tblTipodebeca(

       idTipodebeca int(11) primary key not null,
       Tipodebeca varchar(60) not null

);



Create table tblBecas(

         idBecas int(11) primary key not null,
         idAlumno int(11) not null,
         idTipodebeca int(11) not null,
	foreign key (idAlumno) references tblAlumno (idAlumno),
	foreign key (idTipodebeca) references tblTipodebeca (idTipodebeca)

);
