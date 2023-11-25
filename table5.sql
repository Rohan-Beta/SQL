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

-- this commands help to turn off safe mode in sql so that we update it
SET SQL_SAFE_UPDATES = 0;

-- update value
UPDATE student SET grade = "O" WHERE grade = "A";
UPDATE student SET marks = 80 , grade = "B" WHERE rollno = 105;

SELECT * FROM student;



