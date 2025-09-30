CREATE DATABASE college;
USE college;

CREATE TABLE dept(
id INT PRIMARY KEY,
name VARCHAR(50)
);

CREATE TABLE teacher(
id INT PRIMARY KEY,
name VARCHAR(50),
dept_id INT,
FOREIGN KEY(dept_id) REFERENCES dept(id)
);

INSERT INTO dept
(id, name)
VALUES
(101,"hindi"),
(102,"english"),
(103,"maths");

INSERT INTO teacher
(id, name, dept_id)
VALUES
(1,"anil",101),
(2,"maynak",103),
(3, "shubham",102);

SELECT * FROM teacher;