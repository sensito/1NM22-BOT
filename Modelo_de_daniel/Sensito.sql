CREATE DATABASE IF NOT EXISTS library;
use library;


CREATE TABLE IF NOT EXISTS editorials(
  editorial_id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY ,
  `name` VARCHAR(100) NOT NULL
)CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS genres(
  genre_id INTEGER UNSIGNED PRIMARY KEY  NOT NULL AUTO_INCREMENT,
  literary_genres VARCHAR(30) NOT NULL UNIQUE
)CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS authors (
  author_id  INTEGER UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100)
)CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS type_persons(
  `type_person_id` INTEGER UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `type` ENUM('est', 'prof', 'limp', 'otros') NOT NULL COMMENT 'est = etudiante, prof = profesor, limp = limpieza, et al = otros'
)CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS books (
	book_id INTEGER UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
	author_id INTEGER UNSIGNED NOT NULL,
  editorial_id INTEGER UNSIGNED NOT NULL,
	`title` VARCHAR(100) NOT NULL,
	`year` INTEGER NOT NULL DEFAULT '1900',
	`lenguage` VARCHAR(2) NOT NULL DEFAULT 'es' COMMENT 'ISO 639-1 Languje',
  `copies` INTEGER NOT NULL DEFAULT '1',
  `genre_id` INTEGER UNSIGNED NOT NULL,
	`description` TEXT,
  FOREIGN KEY (editorial_id) REFERENCES editorials(editorial_id),
  FOREIGN KEY (genre_id) REFERENCES genres(genre_id)
)CHARSET=utf8mb4;

create table relAuthorsBooks(
	relAutorsBooks_id INTEGER UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
  author_id INTEGER UNSIGNED NOT NULL,
  book_id INTEGER UNSIGNED NOT NULL,
  foreign key (author_id) references authors(author_id),
  foreign key (book_id) references books(book_id)
);



  	CREATE TABLE IF NOT EXISTS persons(
  		person_id INTEGER UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
  		`name` varchar(50) NOT NULL,
  		`gender` ENUM('M','F','NP') NOT NULL,
  		email varchar(100) NOT NULL UNIQUE,
      `cell_phone_number` VARCHAR(15) UNIQUE,
  		birthdate DATETIME,
      type_person_id INTEGER UNSIGNED NOT NULL,
  		`created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  		`update_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  		`active` TINYINT(1) NOT NULL DEFAULT '1',
      FOREIGN KEY (type_person_id) REFERENCES type_persons(type_person_id)

  	)CHARSET=utf8mb4;

	CREATE TABLE IF NOT EXISTS loans(
		loan_id INTEGER UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
		book_id INTEGER UNSIGNED NOT NULL,
		person_id INTEGER UNSIGNED NOT NULL,
    librarian_id INTEGER UNSIGNED NOT NULL,
		`operation_type` ENUM('BORROWD','RETURNED') NOT NULL,
		`create_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
		`update_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
		`delivered` TINYINT(1) NOT NULL DEFAULT '0',
    FOREIGN KEY (book_id) REFERENCES books(book_id),
    FOREIGN KEY (person_id) REFERENCES persons(person_id),
    FOREIGN KEY (librarian_id) REFERENCES persons(person_id)
	)CHARSET=utf8mb4;
