# Ejercicio 06 - Universidad

## Descripción

En este ejercicio se crea una base de datos llamada **universidad**, con el propósito de almacenar información básica de los alumnos.

Primero se verifica si la base de datos `universidad` ya existe. Si existe, se elimina para poder crearla nuevamente y ejecutar el ejercicio desde cero sin generar conflictos.

Después se crea la base de datos y se selecciona para comenzar a trabajar dentro de ella.

## Tabla alumno

Dentro de la base de datos se crea la tabla `alumno`, la cual contiene los siguientes campos:

* `Matricula`: Identificador único de cada alumno. Es la llave primaria y se genera automáticamente.
* `Nombre`: Almacena el nombre del alumno.
* `AP1`: Almacena el primer apellido del alumno.
* `AP2`: Almacena el segundo apellido del alumno.
* `Correo`: Guarda el correo electrónico del alumno.
* `Telefono`: Guarda el número telefónico del alumno.

## Código SQL

```sql
USE master;
GO

IF DB_ID('universidad') IS NOT NULL
BEGIN
    ALTER DATABASE universidad SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE universidad;
END
GO

CREATE DATABASE universidad;
GO

USE universidad;
GO

/*=============================*
 * TABLA ALUMNO
 *=============================*/

CREATE TABLE alumno(
    Matricula INT IDENTITY(1,1) PRIMARY KEY,
    Nombre VARCHAR(50) NOT NULL,
    AP1 VARCHAR(50) NOT NULL,
    AP2 VARCHAR(50) NOT NULL,
    Correo VARCHAR(100),
    Telefono VARCHAR(15)
);
GO
```

## Resultado

Al ejecutar el script se crea correctamente la base de datos **universidad** y dentro de ella la tabla **alumno**, quedando preparada para registrar la información de los estudiantes.
