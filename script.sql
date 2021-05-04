
CREATE DATABASE davidpiquemarin;

USE davidpiquemarin;

CREATE ROLE ‘designer’, ‘programmer’, ‘final_user’;

GRANT CREATE, ALTER, DROP, TRUNCATE, SELECT, INSERT, UPDATE, DELETE ON davidpiquemarin.* TO ‘designer’;
GRANT SELECT, INSERT, UPDATE, DELETE ON davidpiquemarin.* TO ‘programmer’;
GRANT SELECT ON davidpiquemarin.* TO ‘final_user’;

CREATE USER 'david'@'localhost' IDENTIFIED BY ‘123456789’;
CREATE USER 'pique'@'localhost' IDENTIFIED BY ‘123456789’;
CREATE USER 'marin'@'localhost' IDENTIFIED BY ‘123456789’;

GRANT ‘designer’ TO ‘david’@‘localhost';
GRANT ‘programmer’ TO ‘pique’@‘localhost';
GRANT ‘final_user’ TO ‘marin’@‘localhost';

CREATE TABLE pique_alumnos (
 Codigo_Postal INT,
 Ciudad VARCHAR(50),
 Provincia VARCHAR(20),
 Pais VARCHAR(20),
 PRIMARY KEY (Codigo_Postal)
);

CREATE TABLE pique_asignaturas (
Id_Tipo_Mascota INT,
Tipo_Mascota VARCHAR(20) NOT NULL,
PRIMARY KEY (Id_Tipo_Mascota)
);

CREATE TABLE G1_calificaciones (
 Id_Direccion INT,
 Tipo_via VARCHAR(10),
 Calle VARCHAR(20),
 Numero INT,
 Escalera VARCHAR(10),
 Piso INT,
 Puerta VARCHAR(2),
 Codigo_Postal INT,
 PRIMARY KEY (Id_Direccion),
 FOREIGN KEY (Codigo_Postal) REFERENCES G1_codigo_postal(Codigo_Postal)    
);
