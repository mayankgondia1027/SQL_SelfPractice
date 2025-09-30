CREATE DATABASE college;
USE college;

CREATE TABLE dept(
id INT PRIMARY KEY,
name VARCHAR(50)
);

INSERT INTO dept
(id, name)
VALUES
(101,"hindi"),
(102,"english"),
(103,"maths");

UPDATE dept SET id= 105 WHERE id=103; 

CREATE TABLE teacher(
id INT PRIMARY KEY,
name VARCHAR(50),
dept_id INT,
FOREIGN KEY(dept_id) REFERENCES dept(id)
ON UPDATE CASCADE
ON DELETE CASCADE
);

INSERT INTO teacher
(id, name, dept_id)
VALUES
(1,"anil",101),
(2,"maynak",103),
(3, "shubham",102);

DROP TABLE dept;
DROP TABLE teacher;

SELECT * FROM teacher;			