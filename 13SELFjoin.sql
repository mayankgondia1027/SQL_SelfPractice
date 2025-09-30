CREATE DATABASE school;
USE school;

CREATE TABLE employee(
id INT PRIMARY KEY,
name VARCHAR(50),
manager_id INT
);

INSERT INTO employee
(id,name,manager_id)
VALUES
(101,"ADAM",103),
(102,"BOB",104),
(103,"CASEY",NULL),
(104,"DONALD",103);

SELECT*
FROM employee;

SELECT a.name as manager_name,b.name
FROM employee as a
JOIN employee as b
ON a.id=b.manager_id;

SELECT name FROM employee
UNION 
SELECT name FROM employee;

SELECT name FROM employee
UNION ALL
SELECT name FROM employee;
