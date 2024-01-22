-- Write the Query to find avg marks in each city in ascending order.

CREATE DATABASE test3;

USE test3;

CREATE TABLE student5 (
rollno INT PRIMARY KEY,
name VARCHAR(50),
marks INT NOT NULL,
grade VARCHAR(10),
city VARCHAR(20)	
);

INSERT INTO student5(rollno, name, marks, grade,city) 
VALUES 
(101,"anil",78,"C","Pune"),
(102,"bhumika",93,"A","MUMBIA"),
(103,"chetan",78,"B","MUMBIA"),
(104,"dhruv",78,"A","DELHI"),
(105,"emanuel",12,"F","DELHI"),
(106,"farah",82,"B","DELHI");

SELECT city, avg(marks) 
FROM student5
GROUP BY city 
ORDER BY marks;	

select grade , count(rollno)
from student5
group by grade 
order by grade desc;

select * from student5;

SELECT city, count(rollno)
FROM student5
GROUP BY city
HAVING MAX(marks)>90;

-- select from where group by having order 

select name, rollno
from student5
where grade = "A"
group by name,rollno 
having max(marks) >=90;

-- update
-- UPDATE table_name
-- SET col1 = val1, col2 = val2
-- WHERE condition; 

SET SQL_SAFE_UPDATES=0;


UPDATE student5
SET grade = "O"
WHERE grade = "A";

select * from student5;

UPDATE student5
set marks = 69
where rollno = 104;

select * from student5;

update student5
set grade = "A"
where marks between 80 and 90;

select * from student5;

update student5
set marks = 1 + marks;

select * from student5;

update student5
set marks = 50
where name = "anil";

select * from student5;

delete from student5
where marks=50;
select * from student5;

update student5
set rollno = rollno-1;

select * from student5;