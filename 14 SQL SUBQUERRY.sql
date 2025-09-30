CREATE DATABASE college;
USE college;

CREATE TABLE boysandgirls(
rollno INT PRIMARY KEY,
name VARCHAR(50),
marks INT NOT NULL,
grade VARCHAR(1),
city VARCHAR(20)
);

INSERT INTO boysandgirls
(rollno, name, marks, grade, city)
VALUES
(1,"anil",10,"A","kurukshetra"),
(2, "aman",20,"B","ambala"),
(3,"shubham",30,"C","jind"),
(4,"akhil",45,"D","rohtak"),
(5,"mayank",50,"A","rohtak"),
(6,"bhumika",60,"C","Delhi"),
(7,"farah",70,"B","Kolkata"),
(8,"Sakshi",80,"A","Bhiwani");

SELECT* FROM boysandgirls;

SELECT name,marks
FROM boysandgirls 
WHERE marks>(SELECT AVG(marks)FROM boysandgirls);

SELECT name,rollno 
FROM boysandgirls
WHERE rollno IN(
SELECT rollno
FROM boysandgirls
WHERE rollno % 2 = 0);

SELECT MAX(marks)
FROM(SELECT * FROM boysandgirls WHERE city="rohtak")as BGCITY;

SELECT(SELECT MAX(marks)FROM boysandgirls),name
FROM boysandgirls;
 