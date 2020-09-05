DROP DATABASE IF EXISTS employees;
CREATE DATABASE employees;
USE employees;


CREATE TABLE departments (
  id INT NOT NULL AUTO_INCREMENT,
  name varchar(30) UNIQUE NOT NULL,
  PRIMARY KEY(id)
);

CREATE TABLE roles (
  id INT NOT NULL AUTO_INCREMENT,
  title VARCHAR(30) NOT NULL,
  salary DECIMAL NOT NULL,
  department_id INT NOT NULL,
  CONSTRAINT fk_department FOREIGN KEY (department_id) REFERENCES departments(id),
  PRIMARY KEY(id)
);

CREATE TABLE workers (
  id INT NOT NULL AUTO_INCREMENT ,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  role_id INT NOT NULL,
  CONSTRAINT fk_role FOREIGN KEY (role_id) REFERENCES roles(id),
  manager_id INT,
  CONSTRAINT fk_manager FOREIGN KEY (manager_id) REFERENCES workers(id),
  PRIMARY KEY(id)
);

SELECT * FROM workers;
SELECT * FROM roleS;


