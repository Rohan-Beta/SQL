-- create the query to find avg marks in each city in ascending order

CREATE DATABASE college;

USE college;

CREATE TABLE student (
	rollno INT PRIMARY KEY,
    name VARCHAR(100),
    marks INT NOT NULL,
    grade VARCHAR(2),
    city VARCHAR(20)
);

INSERT INTO student
(rollno , name , marks , grade , city)
VALUES
(101 , "anil" , 78 , "C" , "Pune"),
(102 , "bhumika" , 93 , "A" , "Mumbai"),
(103 , "chetna" , 85 , "B" , "Mumbai"),
(104 , "dhruv" , 96 , "A" , "Delhi"),
(105 , "emanuel" , 12 , "F" , "Delhi"),
(106 , "farah" , 82 , "B" , "Delhi");

SELECT city , AVG(marks) FROM student GROUP BY CITY ORDER BY AVG(marks) ASC;
