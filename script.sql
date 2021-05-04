
CREATE DATABASE davidpiquemarin;

USE davidpiquemarin;

CREATE ROLE 'designer', 'programmer', 'final_user';

GRANT CREATE, ALTER, DROP, SELECT, INSERT, UPDATE, DELETE ON davidpiquemarin.* TO 'designer';
GRANT SELECT, INSERT, UPDATE, DELETE ON davidpiquemarin.* TO 'programmer';
GRANT SELECT ON davidpiquemarin.* TO 'final_user';

CREATE USER 'david'@'localhost' IDENTIFIED BY '123456789';
CREATE USER 'pique'@'localhost' IDENTIFIED BY '123456789';
CREATE USER 'marin'@'localhost' IDENTIFIED BY '123456789';

GRANT 'designer' TO 'david'@'localhost';
GRANT 'programmer' TO 'pique'@'localhost';
GRANT 'final_user' TO 'marin'@'localhost';

CREATE TABLE pique_alumnos (
 ID_Alumno INT,
 DNI CHAR(10) ,
 Nombre VARCHAR(20),
 Apellidos VARCHAR(20),
 PRIMARY KEY (ID_ALUMNO)
);

CREATE TABLE pique_asignaturas (
 ID_Asignatura INT;
 Codigo CHAR(10),
 Asignatura VARCHAR(100),
 PRIMARY KEY (Codigo)
);

CREATE TABLE pique_calificaciones (
 Nota  INT,
 ID_Calificacion INT,
 FOREIGN KEY (DNI) REFERENCES pique_alumnos(DNI),
 FOREIGN KEY (Codigo) REFERENCES pique_asignaturas(Codigo), 
 PRIMARY KEY (ID_Calificacion)
);
