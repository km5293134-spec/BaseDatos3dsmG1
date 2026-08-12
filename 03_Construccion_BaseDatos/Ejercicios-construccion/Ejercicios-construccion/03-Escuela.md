# Ejercicio 03 - Escuela

## Descripción

En este ejercicio se crea una base de datos llamada **escuela**, la cual servirá para almacenar información relacionada con los alumnos.

Primero se verifica si la base de datos `escuela` ya existe. En caso de que exista, se elimina para poder crearla nuevamente y evitar errores durante la ejecución del script.

Después se crea la base de datos y se selecciona para comenzar a trabajar dentro de ella.

## Tabla alumno

Dentro de la base de datos se crea la tabla `alumno`, que contiene los siguientes campos:

* `idAlumno`: Identificador único de cada alumno. Es la llave primaria y se genera automáticamente.
* `nombre`: Guarda el nombre del alumno.
* `fecha_nac`: Guarda la fecha de nacimiento.
* `apellido_p`: Guarda el apellido paterno.
* `apellido_m`: Guarda el apellido materno.
* `direccion`: Guarda la dirección del alumno.

## Código SQL

```sql
USE master;
GO

IF DB_ID('escuela') IS NOT NULL
BEGIN
    ALTER DATABASE escuela SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE escuela;
END
GO

CREATE DATABASE escuela;
GO

USE escuela;
GO

/*=============================*
 * TABLA ALUMNO
 *=============================*/

CREATE TABLE alumno(
    idAlumno INT IDENTITY(1,1) PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    fecha_nac VARCHAR(10) NOT NULL,
    apellido_p VARCHAR(50) NOT NULL,
    apellido_m VARCHAR(50) NOT NULL,
    direccion VARCHAR(100) NOT NULL
);
GO
```

## Resultado

Al ejecutar el script correctamente se crea la base de datos **escuela** y dentro de ella la tabla **alumno**, quedando lista para posteriormente agregar y consultar información de los estudiantes.
