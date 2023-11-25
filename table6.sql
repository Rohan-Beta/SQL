-- Foreign Key
-- Cascading means it will update and delete data in child table if any change happend in parent table

CREATE DATABASE college;

USE college;

-- parent table

CREATE TABLE dept (
	  id INT PRIMARY KEY,
    name VARCHAR(50)
);

INSERT INTO dept
(id , name)
VALUES
(101 , "english"),
(102 , "IT");

UPDATE dept SET id = 103 WHERE id = 102;

SELECT * FROM dept;

-- child table

CREATE TABLE teacher (
	  id INT PRIMARY KEY,
    name VARCHAR(50),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES dept(id) -- link 2 table
    ON UPDATE CASCADE -- cascading
    ON DELETE CASCADE
);

INSERT INTO teacher
(id , name , dept_id)
VALUES
(101 , "Adam" , 101),
(102 , "Eve" , 102); -- as we update in parent table it is also updated

SELECT * FROM teacher;
