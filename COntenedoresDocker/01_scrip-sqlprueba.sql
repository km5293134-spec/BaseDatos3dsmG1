-- crear base de datos prueba1

--permite crrear una base de datos (SQL-LDD)

CREATE DATABASE prueba1;

--utiliza base de datos

USE prueba1;

--crea una tabla (SQL-LDD)

CREATE TABLE alumno(
id int NOT NULL,
nombre VARCHAR(20) NOT NULL,
edad int not null,
matricula INT NOT NULL,
direccion VARCHAR(30) NULL,
CONSTRAINT pk_alumno
PRIMARY KEY (id),
CONSTRAINT unique_matricula
UNIQUE (matricula)


);

-- agregar 2 alumnos 

INSERT INTO alumno (id, nombre, edad, matricula, direccion)
VALUES (1, 'ARCADIA', 65, 123456, 'calle Buena vista'),
       (2, 'NARNIA', 19, 654321, 'calle la joya');
       
       --SELECCIONAR LOS ALUMNOA ALMACENADOS
       
       SELECT *
       FROM alumno;
       
       --cambiar el nombre de arcadia a Kevin
       
       UPDATE alumno
       SET nombre = 'Kevin'
       WHERE id = 1;