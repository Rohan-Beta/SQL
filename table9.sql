-- sql sub queries

CREATE DATABASE college;

USE college;

CREATE TABLE student(
	rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL
);

INSERT INTO student
(rollno , name , marks)
VALUES
(101 , "anil" , 78),
(102 , "bhumika" , 93),
(103 , "chetan" , 85),
(104 , "dhruv" , 96),
(105 , "emanuel" , 92),
(106 , "farah" , 82);

-- find student where a student marks is more than the whole class avg marks

SELECT name , marks FROM student
WHERE marks > (SELECT AVG(marks) FROM student);

-- find even roll
SELECT * FROM student
WHERE rollno % 2 = 0;

-- FORM
SELECT MAX(marks)
FROM (SELECT * FROM student WHERE city = "Delhi") AS temp;
