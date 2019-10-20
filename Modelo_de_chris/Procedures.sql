use dbbiblioteca;

drop procedure if exists spLogin;
delimiter //

	create procedure spLogin(in Usuarioxd nvarchar(60), in Contrasenaxd nvarchar(60))
	BEGIN    
			declare idValidacion int(11);
            set idValidacion = (Select idPersona from tblpersona where Usuario = Usuarioxd AND Contrasena = Contrasenaxd);
			IF(idValidacion is null)
            THEN
				set idValidacion = 0;
			END IF;
            
            select idValidacion as Mensaje;
    
    END //

delimiter ;

call spLogin('admin','admin');