-- create a database inside the database create a table with respective info and show it

CREATE DATABASE IF NOT EXISTS xyz;

USE xyz;

CREATE TABLE employee(
    id INT PRIMARY KEY,
    name VARCHAR(50),
    salary INT DEFAULT 12000
);

INSERT INTO employee VALUES(1 , "adam" , 25000.00);
INSERT INTO employee VALUES(2 , "bob" , 3000.00);

INSERT INTO employee 
(id , name) 
VALUES
(3 , cris);

SELECT * FROM employee;
