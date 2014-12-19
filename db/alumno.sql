DROP DATABASE IF EXISTS F3Demo;
CREATE DATABASE F3Demo DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

USE F3Demo;

CREATE TABLE IF NOT EXISTS alumno (
	nexp		INT,
	nombre		VARCHAR(128) NOT NULL,
	apellidos	VARCHAR(128) NOT NULL,
	grupo		VARCHAR(128) NOT NULL,
	PRIMARY KEY (nexp)
);

INSERT INTO alumno VALUES (1111,'Rubén','Serrador','DAW2');
INSERT INTO alumno VALUES (2222,'Alejandro','Gómez','DAW2');
INSERT INTO alumno VALUES (3333,'David','Silva','DAW2');
INSERT INTO alumno VALUES (4444,'Roberto','Segarra','DAW2');
INSERT INTO alumno VALUES (5555,'Javier','Gómez','DAW2');
INSERT INTO alumno VALUES (6666,'David','Belenguer','DAW2');
INSERT INTO alumno VALUES (7777,'Germán','Gisbert','DAW2');
INSERT INTO alumno VALUES (8888,'Ismael','Jurado','DAW1');
INSERT INTO alumno VALUES (9999,'Borja','Martínez','DAW1');
INSERT INTO alumno VALUES (1212,'Aurora','Pelegrín','DAW1');
INSERT INTO alumno VALUES (1313,'Carlos','Martí','DAW1');
INSERT INTO alumno VALUES (1414,'Bernat','Coloma','DAW1');
INSERT INTO alumno VALUES (1515,'Muthanna','Díaz','DAW1');
