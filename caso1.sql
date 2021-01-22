CREATE DATABASE caso1;

CREATE TABLE departamento(
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(20) NOT NULL
);



CREATE TABLE trabajador(
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(30) NOT NULL,
    rut INT NOT NULL UNIQUE,
    direccion VARCHAR(50) NOT NULL,
    departamento_id INT,
    FOREIGN KEY(departamento_id) REFERENCES departamento(id)
);



CREATE TABLE liquidaciones(
    id SERIAL,
    archivo_drive_liquidacion VARCHAR(50),
    trabajador_id INT,
    FOREIGN KEY(trabajador_id) REFERENCES trabajador(id)
);