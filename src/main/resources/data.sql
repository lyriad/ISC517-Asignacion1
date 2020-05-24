DROP TABLE IF EXISTS estudiantes;

CREATE TABLE estudiantes (
    matricula BIGINT PRIMARY KEY,
    nombre VARCHAR(63) NOT NULL,
    apellido VARCHAR(63) NOT NULL,
    telefono VARCHAR(31) NOT NULL
);
