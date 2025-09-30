CREATE DATABASE college;
USE college;

CREATE TABLE members(
rollno INT PRIMARY KEY,
name VARCHAR(50),
marks INT NOT NULL,
grade VARCHAR(1),
city VARCHAR(20)
);

INSERT INTO members
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
 SELECT * FROM members;
 TRUNCATE TABLE members;