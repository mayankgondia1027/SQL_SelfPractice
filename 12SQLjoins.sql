CREATE DATABASE school;
USE school;

CREATE TABLE students(
id INT PRIMARY KEY,
name VARCHAR(50)
);
INSERT INTO students
(id,name)
VALUES
(101,"ADAM"),
(102,"BOB"),
(103,"CASEY");

CREATE TABLE courses(
id INT PRIMARY KEY,
coursename VARCHAR(50)
);
INSERT INTO courses
(id,coursename)
VALUES
(102,"english"),
(105,"math"),
(103,"science"),
(107,"computer science");


SELECT * FROM students;
SELECT * FROM courses;

SELECT * 
FROM students as s
INNER JOIN courses as c
ON s.id=c.id;


SELECT *
FROM students
LEFT JOIN courses
ON students.id=courses.id;

SELECT *
FROM students
RIGHT JOIN courses
ON students.id=courses.id;

SELECT *
FROM students
LEFT JOIN courses
ON students.id=courses.id
UNION
SELECT *
FROM students
RIGHT JOIN courses
ON students.id=courses.id;


SELECT *
FROM students
LEFT JOIN courses
ON students.id=courses.id
WHERE courses.id IS NULL;


SELECT *
FROM students
RIGHT JOIN courses
ON students.id=courses.id
WHERE students.id IS NULL;

