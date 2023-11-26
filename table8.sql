-- join

CREATE DATABASE college;

USE college;

CREATE TABLE student(
	id INT PRIMARY KEY,
    name VARCHAR(50)
);

INSERT INTO student
(id , name)
VALUES
(101 , "adam"),
(102 , "bob"),
(103 , "casey");

SELECT * FROM student;

CREATE TABLE course(
	id INT PRIMARY KEY,
    course VARCHAR(50)
);

INSERT INTO course
(id , course)
VALUES
(102 , "english"),
(105 , "math"),
(103 , "science"),
(107 , "computer science");

SELECT * FROM course;

-- inner join

SELECT *
FROM student
INNER JOIN course
ON student.id = course.id;
