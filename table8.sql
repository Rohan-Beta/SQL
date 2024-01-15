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

-- Inner join

SELECT *
FROM student
INNER JOIN course
ON student.id = course.id;

-- Left join

SELECT *
FROM student
LEFT JOIN course
ON student.id = course.id;

-- Right join

SELECT *
FROM student
RIGHT JOIN course
ON student.id = course.id;

-- Full join

SELECT *
FROM student
LEFT JOIN course
ON student.id = course.id

UNION

SELECT *
FROM student
RIGHT JOIN course
ON student.id = course.id;

-- Right exclusive join

SELECT *
FROM student
RIGHT JOIN course
ON student.id = course.id
WHERE student.id IS NULL;

-- Left exclusive join

SELECT *
FROM student
LEFT JOIN course
ON student.id = course.id
WHERE course.id IS NULL;

-- Full exclusive join

SELECT *
FROM student
LEFT JOIN course
ON student.id = course.id
WHERE course.id IS NULL

UNION

SELECT *
FROM student
RIGHT JOIN course
ON student.id = course.id
WHERE student.id IS NULL;

-- Self join

SELECT student.name , course.course
FROM student
JOIN course
ON student.id = course.id;
