CREATE DATABASE college;
USE college;
CREATE TABLE students(
rollno INT PRIMARY KEY,
name VARCHAR(50),
marks INT NOT NULL,
grade VARCHAR(1),
city VARCHAR(20)
);


INSERT INTO students
(rollno,name,marks,grade,city)
VALUES
(1,"anil",10,"A","kurukshetra"),
(2, "aman",20,"B","ambala"),
(3,"shubham",30,"C","jind"),
(4,"akhil",45,"D","rohtak"),
(5,"mayank",50,"A","rohtak"),
(6,"bhumika",60,"C","Delhi"),
(7,"farah",70,"B","Kolkata"),
(8,"Sakshi",80,"A","Bhiwani");

SELECT* FROM students;
SELECT name,grade FROM students;
SELECT DISTINCT grade FROM students;

SELECT * FROM students WHERE marks>30;
SELECT * FROM students WHERE city="rohtak";
SELECT * FROM students WHERE marks+20>50;
SELECT *FROM students WHERE grade="A";
SELECT * FROM students WHERE marks>40 AND city="rohtak";
SELECT * FROM students WHERE grade="A" OR city="jind";
SELECT *FROM students WHERE marks BETWEEN 30 AND 50;
SELECT * FROM students WHERE city IN ("rohtak", "kurukshetra");
SELECT * FROM students WHERE city NOT IN("pune");

SELECT * FROM students LIMIT 2;
SELECT * FROM students WHERE marks>30 LIMIT 1;
SELECT * FROM students ORDER BY marks DESC;

SELECT marks FROM students;
SELECT MAX(marks) FROM students;
SELECT MIN(marks) FROM students;
SELECT AVG(marks) FROM students;
SELECT COUNT(name) FROM students;

SELECT city FROM students GROUP BY city;
SELECT city,COUNT(name) FROM students GROUP BY city;
SELECT city,name, COUNT(name) FROM students GROUP BY city,name;
SELECT city, AVG(marks) FROM students GROUP BY city;
SELECT city, AVG(marks) FROM students GROUP BY city ORDER BY AVG(marks) DESC;

SELECT grade FROM students GROUP BY grade;
SELECT grade FROM students GROUP BY grade ORDER BY grade DESC;  
SELECT grade, COUNT(rollno) FROM students GROUP BY grade ORDER BY grade DESC; 

SELECT city
FROM students
WHERE grade="A"
GROUP BY city
HAVING MAX(marks)>=40
ORDER BY city ASC;