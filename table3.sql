-- create a random tableCREATE DATABASE college;

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

SELECT name , marks FROM student; -- select 2 columns

SELECT DISTINCT city FROM student; -- select unique value from a column

-- where clause
SELECT * FROM student WHERE city = "Mumbai" AND marks > 80; -- logical operation
SELECT * FROM student WHERE city != "Mumbai";

-- arithmetic operation
SELECT * FROM student WHERE marks + 10 > 100;

-- between
SELECT * FROM student WHERE marks BETWEEN 80 AND 86;

-- in
SELECT * FROM student WHERE city IN ("Pune" , "Delhi");

-- not
SELECT * FROM student WHERE city NOT IN ("Pune" , "Delhi");

-- limit clause
SELECT * FROM student LIMIT 3; -- show only top 3 rows
SELECT * FROM student WHERE marks > 70 LIMIT 3;

-- order by clause
SELECT * FROM student ORDER BY marks ASC; -- ascending
SELECT * FROM student ORDER BY city DESC; -- descending

SELECT * FROM student ORDER BY marks DESC LIMIT 3;

-- aggregate functions
SELECT MAX(marks) FROM student;
SELECT MIN(marks) FROM student;
SELECT AVG(marks) FROM student;
SELECT COUNT(name) FROM student;

-- group by
SELECT city , COUNT(name) FROM student GROUP BY city;
SELECT city , COUNT(name) FROM student GROUP BY city ORDER BY city ASC; -- order by and group by
SELECT city , name , COUNT(name) FROM student GROUP BY city , name ORDER BY name ASC;

-- select city in which atleast one student max marks is more than 90
SELECT city , COUNT(name) FROM student GROUP BY city HAVING MAX(marks) > 90;
