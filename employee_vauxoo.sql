-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.

--USE DATABASE employee_employee

--DROP TABLE employee;

CREATE TABLE IF NOT EXISTS employee
(
  id serial NOT NULL,
  first_name character varying,
  last_name character varying,
  CONSTRAINT employee_pkey PRIMARY KEY (id)
);

--DROP TABLE employee_department;

CREATE TABLE IF NOT EXISTS employee_department
(
  id serial NOT NULL,
  name character varying,
  description character varying,
  CONSTRAINT employee_department_pkey PRIMARY KEY (id)
);

INSERT INTO employee_department VALUES (default, 'Desarrollo', '');
INSERT INTO employee_department VALUES (default, 'Soporte', '');
INSERT INTO employee_department VALUES (default, 'Gestión de la Calidad', '');
INSERT INTO employee_department VALUES (default, 'Reclutamiento y Seleccion', '');
INSERT INTO employee_department VALUES (default, 'Nomina', '');
INSERT INTO employee_department VALUES (default, 'Cobranza', '');

ALTER TABLE employee ADD department_id integer not null;
ALTER TABLE employee ADD CONSTRAINT employee_fkey FOREIGN KEY (department_id)
      REFERENCES employee_department (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE SET NULL;

INSERT INTO employee VALUES (default, 'Pedro', 'Perez','1');
INSERT INTO employee VALUES (default, 'Juan', 'Martinez','2');
INSERT INTO employee VALUES (default, 'Jose', 'Lopez','3');
INSERT INTO employee VALUES (default, 'Beatriz', 'Colmenarez','4');

--DROP TABLE employee_hobby

CREATE TABLE IF NOT EXISTS employee_hobby
(
  id serial NOT NULL,
  name character varying,
  description character varying,
  CONSTRAINT employee_hobby_pkey PRIMARY KEY (id)
);

INSERT INTO employee_hobby VALUES (default, 'Jugar Ajedrez','');
INSERT INTO employee_hobby VALUES (default, 'Leer','');
INSERT INTO employee_hobby VALUES (default, 'Escalar','');

--DROP TABLE employee_employee_hobby_rel

CREATE TABLE IF NOT EXISTS employee_employee_hobby_rel
(
  employee_id integer NOT NULL,
  hobby_id integer NOT NULL,
  CONSTRAINT employee_employee_hobby_rel_employee_id_fkey FOREIGN KEY (employee_id)
      REFERENCES employee (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE CASCADE,
  CONSTRAINT employee_employee_hobby_rel_hobby_id_fkey FOREIGN KEY (hobby_id)
      REFERENCES employee_hobby (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE CASCADE
);

INSERT INTO employee_employee_hobby_rel VALUES ('1','1');
INSERT INTO employee_employee_hobby_rel VALUES ('1','2');
INSERT INTO employee_employee_hobby_rel VALUES ('2','3');
INSERT INTO employee_employee_hobby_rel VALUES ('2','2');
INSERT INTO employee_employee_hobby_rel VALUES ('3','2');
INSERT INTO employee_employee_hobby_rel VALUES ('3','3');
INSERT INTO employee_employee_hobby_rel VALUES ('4','1');
INSERT INTO employee_employee_hobby_rel VALUES ('4','3');

ALTER TABLE employee ADD manager_id integer;
ALTER TABLE employee ADD CONSTRAINT employee_manager_fkey FOREIGN KEY (manager_id)
      REFERENCES employee (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE SET NULL;

UPDATE employee SET manager_id = '1' WHERE id = '1';
UPDATE employee SET manager_id = '3' WHERE id = '2';
UPDATE employee SET manager_id = '1' WHERE id = '3';
UPDATE employee SET manager_id = '3' WHERE id = '4';

-- ...
