CREATE DATABASE IF NOT EXISTS ServicioMedico;
USE ServicioMedico;

CREATE TABLE IF NOT EXISTS   Medicamentos(
    Medicamento_id INT UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
    Tipo_Medicamento VARCHAR(15) NOT NULL,
	Nombre_Medicamento VARCHAR(30) NOT NULL
)charset=utf8mb4;

CREATE TABLE IF NOT EXISTS   Receta(
    Receta_id INT UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
    Medicamento_id INT UNSIGNED NOT NULL,
    FOREIGN KEY (Medicamento_id) REFERENCES Medicamentos(Medicamento_id)
)charset=utf8mb4;

CREATE TABLE IF NOT EXISTS   Especialidad(
    Especialidad_id INT UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
    Descripcion_Especialidad VARCHAR(50) NOT NULL
)charset=utf8mb4;

CREATE TABLE IF NOT EXISTS   DatosDoctor(
    Doctor_id INT UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
    Especialidad_id INT UNSIGNED NOT NULL,
    Cedula_Profesional INT(30) NOT NULL,
    Nombre VARCHAR(15) NOT NULL,
	Apellido_Paterno VARCHAR(15) NOT NULL,
	Apellido_Materno VARCHAR(15) NOT NULL,
    Telefono VARCHAR(20) NOT NULL,
	CURP VARCHAR(18) NOT NULL,
	RFC VARCHAR(15) NOT NULL,
  `Activated` TINYINT(1) DEFAULT '1',
	FOREIGN KEY (Especialidad_id) REFERENCES Especialidad(Especialidad_id)
)charset=utf8mb4;

CREATE TABLE IF NOT EXISTS   TipoComunidad(
    Tipo_id INT UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
    Comunidad_id INT UNSIGNED NOT NULL,
    Descripcion_Tipo VARCHAR(20) NOT NULL
);

CREATE TABLE IF NOT EXISTS   Paciente(
    Paciente_id INT UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
    Tipo_id INT UNSIGNED NOT NULL,  
    NNS INT(11) NOT NULL,
    Nombres VARCHAR(15) NOT NULL,
	Apellido_Paterno VARCHAR(15) NOT NULL,
	Apellido_Materno VARCHAR(15) NOT NULL,
    Edad INT(2) NOT NULL,
	CURP VARCHAR(18) NOT NULL,
	Género ENUM('M','F','NP') NOT NULL,
    Activated TINYINT(1) DEFAULT '1',
	FOREIGN KEY (Tipo_id) REFERENCES TipoComunidad(Tipo_id)
)charset=utf8mb4;

CREATE TABLE IF NOT EXISTS   ServicioMedico(
	  ServicioMedico_id INT UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
    Paciente_id INT UNSIGNED NOT NULL,
    Receta_id INT UNSIGNED NOT NULL,
    Doctor_id INT UNSIGNED NOT NULL,
    Fecha_consulta TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    Receta TEXT,
    FOREIGN KEY (Paciente_id) REFERENCES Paciente(Paciente_id),
    FOREIGN KEY (Receta_id) REFERENCES Receta(Receta_id),
    FOREIGN KEY (Doctor_id) REFERENCES DatosDoctor(Doctor_id)
)charset=utf8mb4;
