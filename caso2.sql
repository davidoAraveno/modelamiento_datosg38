CREATE DATABASE caso2;

CREATE TABLE cursos(
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(20) UNIQUE
);

CREATE TABLE profesores(
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(30) NOT NULL
);

CREATE TABLE alumnos(
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(30) NOT NULL,
    rut INT NOT NULL UNIQUE,
    curso_id INT,
    FOREIGN KEY(curso_id) REFERENCES cursos(id)
);

CREATE TABLE pruebas(
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(20) NOT NULL,
    alumno_id INT,
    profe_calificador INT,
    puntaje FLOAT,
    FOREIGN KEY(alumno_id) REFERENCES alumnos(id),
    FOREIGN KEY(profe_calificador) REFERENCES profesores(id)
);

CREATE TABLE departamentos(
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(20) NOT NULL UNIQUE
);


CREATE TABLE profesores_departamentos(
    profesor_id INT,
    departamento_id INT,
    FOREIGN KEY(profesor_id) REFERENCES profesores(id),
    FOREIGN KEY(departamento_id) REFERENCES departamentos(id)
);