CREATE DATABASE amazon;
USE amazon;

CREATE TABLE employee(
id INT PRIMARY KEY,
name VARCHAR(100),
salary INT NOT NULL
);

INSERT INTO employee
(id, name,salary)
VALUES
(1,"mayank",1000),
(2,"atul",2000),
(3,"riya",3000);

SELECT * FROM employee;

CREATE TABLE temp1(
id INT UNIQUE
);

INSERT INTO temp1 VALUES(101);
INSERT INTO temp1 VALUES(101);

SELECT* FROM temp1;

CREATE TABLE temp2(
id INT,
name VARCHAR(60),
city VARCHAR(20),
PRIMARY KEY (id,name)
);

CREATE TABLE emp(
id INT PRIMARY KEY,
salary INT DEFAULT 25000
);

INSERT INTO emp
(id)
VALUES
(1),
(2),
(3);

SELECT * FROM emp;




