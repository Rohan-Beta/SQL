// table related queries

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

SELECT * FROM student;

// add column
ALTER TABLE student
ADD COLUMN age INT;

// modify column datatype
ALTER TABLE student
MODIFY COLUMN age VARCHAR(50);

// change column name and its datatype
ALTER TABLE student
CHANGE COLUMN age stu_age INT;

// delete column
ALTER TABLE student
DROP stu_age;

// change table name
ALTER TABLE student
RENAME TO stu;

ALTER TABLE stu
RENAME TO student;

// delete data from table
TRUNCATE TABLE student;
