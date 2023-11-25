-- basic commands

CREATE DATABASE college; -- create a database
CREATE DATABASE IF NOT EXISTS college; -- check if database is allready created or not

DROP DATABASE college; -- delete a databse
DROP DATABASE IF EXISTS college; -- check if database is allready created or not

USE college;

-- create a table in college databse

CREATE TABLE student( -- create a table in database
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT NOT NULL
);

-- inseting values

INSERT INTO student VALUES(1 , "Rohan" , 18);
INSERT INTO student VALUES(2 , "Rohit" , 20);

-- anotther way to insert values

INSERT INTO student
(id  , name , age)
VALUES
(1 , "Rohan" , 18),
(2 , "Rohit" , 20);

-- print all the details from the table

SELECT * FROM student;

SHOW DATABASES;
SHOW TABLES;
