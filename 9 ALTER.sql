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

ALTER TABLE members ADD COLUMN age INT;
ALTER TABLE members DROP COLUMN age;
ALTER TABLE members RENAME TO Students;
SELECT * FROM Students;

SELECT * FROM members;
ALTER TABLE members ADD COLUMN age INT NOT NULL DEFAULT 19;
ALTER TABLE members MODIFY COLUMN age VARCHAR(2);

INSERT INTO members
(rollno, name, marks, mem_age)
VALUES
(107,"BOB",55,100);

ALTER TABLE members CHANGE age mem_age INT;
ALTER TABLE members DROP COLUMN mem_age;
ALTER TABLE members RENAME TO MEMBERS;
ALTER TABLE MEMBERS RENAME TO members;


