CREATE DATABASE PRACT69;
USE PRACT69;

CREATE TABLE student (
rollno INT PRIMARY KEY,
name VARCHAR(50),
marks INT NOT NULL,
grade VARCHAR(10),
city VARCHAR(20)	
);

INSERT INTO student(rollno, name, marks, grade,city) 
VALUES 
(101,"anil",78,"C","Pune"),
(102,"bhumika",93,"A","MUMBIA"),
(103,"chetan",78,"B","MUMBIA"),
(104,"dhruv",78,"A","DELHI"),
(105,"emanuel",12,"F","DELHI"),
(106,"farah",82,"B","DELHI");

-- SELECT rollno, name, marks FROM student; 
SELECT DISTINCT city FROM student;

-- clause (to define some conditions)
-- SELCT col1,col2 FROM table_name WHERE conditions;

SELECT * FROM student WHERE marks >80;

SELECT * FROM student WHERE city = "MUMBIA";

SELECT * FROM student WHERE marks +10 >100;


-- operators 
-- AND checks if both the conditions are true or not

SELECT * FROM student WHERE marks >80 AND city = "MUMBIA";

-- OR is used if any 1 condtion is true or not 
SELECT * FROM student WHERE marks >90 OR city = "DELHI";

-- BETWEEN is used to select from a given range
SELECT * FROM student WHERE marks BETWEEN 80 AND 100;

-- IN is used if any values matches in the list 
SELECT * FROM student WHERE city IN ("pune","MUMBIA");

-- NOT IN is used to negate (opposite of what it is in the condition)
SELECT * FROM student WHERE city NOT IN ("pune","MUMBIA");

-- LIMIT it is used to limit the display of col in a table
SELECT * FROM student LIMIT 3;

SELECT * FROM student WHERE marks >70 LIMIT 3;

-- ASC (prints the value in acending order)
SELECT * FROM student ORDER BY marks ASC;

SELECT * FROM student ORDER BY marks DESC LIMIT 3;

-- AGGREGATE FUNCTIONS 
-- COUNT MAX MIN SUM AVG

SELECT AVG(marks) FROM student;

SELECT SUM(marks) FROM student;

-- GROUPBY groups rows that have the same values into sumary rows.
-- count no of students in each city 

SELECT city, count(name) FROM student GROUP BY city;



SELECT city,name, count(rollno) FROM student GROUP BY city,name;