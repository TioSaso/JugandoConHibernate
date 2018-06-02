CREATE DATABASE EJE;
USE EJE:
CREATE TABLE Libros(IDLibros INT(5) NOT NULL AUTO_INCREMENT, 
  	                ISBLibro VARCHAR(15) NOT NULL,
  	                TituloLibro VARCHAR(256) NOT NULL,
  	                NPaginas INT(4) NOT NULL,
  	                PrecioRefLibro INT(7) NULL,  	     			     
  	      			    PRIMARY KEY(IDLibros));

CREATE TABLE Autores(IDAutores INT(4) NOT NULL AUTO_INCREMENT,
                       ApePaAutor VARCHAR(15) NOT NULL,
                       ApeMaAutor VARCHAR(15) NOT NULL,
                       NomAutor VARCHAR(13) NOT NULL,
                       PsedoAutor VARCHAR(25) NOT NULL,
                       PRIMARY KEY(IDAutores));

CREATE TABLE Autores_Libros(IDAutores INT(4) NOT NULL,
                           IDLibros INT(5) NOT Null,
                           PRIMARY KEY(IDAutores,IDLibros),
                           CONSTRAINT Autores_Libro_ibfk_1 FOREIGN KEY (IDAutores) REFERENCES Autores(IDAutores),
                           CONSTRAINT Autores_Libro_ibfk_2 FOREIGN KEY (IDLibros) REFERENCES Libros(IDLibros));
  