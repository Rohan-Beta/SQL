-- veiw
-- it creates a virtual table from the original table as per our choice

CREATE DATABASE college;

USE college;

CREATE TABLE student(
	rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    city VARCHAR(50)
);

INSERT INTO student
(rollno , name , marks , city)
VALUES
(101 , "anil" , 78 , "Pune"),
(102 , "bhumika" , 93 , "Mumbai"),
(103 , "chetan" , 85 , "Mumbai"),
(104 , "dhruv" , 96 , "Delhi"),
(105 , "emanuel" , 92 , "Delhi"),
(106 , "farah" , 82 , "Delhi");


SELECT * FROM student;

SELECT MAX(marks)
FROM (SELECT * FROM student WHERE city = "Delhi") AS temp;

-- create a view 

CREATE VIEW view1 AS
SELECT name , rollno , marks FROM student;

SELECT * FROM view1;

SELECT * FROM view1 WHERE marks > 90;

-- delete view
DROP VIEW view1;
