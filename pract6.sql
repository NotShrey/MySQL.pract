create database pract6;
use pract6;

create table student(
student_id int primary key,
name varchar(10)
);
INSERT INTO student VALUES
(101,"adam"),
(102,"yeexys"),
(103,"yeet");

create table course(
id INT PRIMARY KEY,
course VARCHAR(50)
);

INSERT INTO course VALUES
(102,"english"),
(105,"math"),
(103,"science"),
(107, "CS");

select *
from student 
inner join course
on student.student_id = course.id;

select *
from student as s 
inner join course as c
on s.student_id = c.id;

select *
from student as s 
left join course as c
on s.student_id = c.id;

select *
from student as s 
right join course as c
on s.student_id = c.id;


select *
from student as s 
left join course as c
on s.student_id = c.id
UNION
select *
from student as s 
right join course as c
on s.student_id = c.id;

select *
from student as s 
left join course as c
on s.student_id = c.id
where c.id is null ;

SELECT *
FROM student
LEFT JOIN course ON student.student_id = course.id
WHERE course.id IS NULL

UNION

SELECT *
FROM student
RIGHT JOIN course ON student.student_id = course.id
WHERE student.student_id IS NULL;


select a.name as manager_name, b.name
from emplyoee as a
join emplyoee as b
on a.id = b.id;

select * from course;


CREATE TABLE student69 (
rollno INT PRIMARY KEY,
name VARCHAR(50),
marks INT NOT NULL,
grade VARCHAR(1),
city VARCHAR(20)
);


INSERT INTO student69 (rollno, name, marks, grade, city)
VALUES
(101, 'Pune', 82, 'B', 'Delhi'),
(102, 'Farah', 78, 'B', 'Mumbai'),
(103, 'Bhumika', 85, 'A', 'Mumbai'),
(104, 'Chetan', 96, 'A', 'Delhi'),
(105, 'Dhruv', 93, 'A', 'F'),
(106, 'Emanueli', 92, 'A', 'Delhi');


select name,marks 
from student69
where marks >(select avg(marks)
from student69);


select rollno, name
from student69
where rollno%2=0;

select max(marks)
from (
SELECT *
FROM student69
WHERE city = "Delhi") as temp;


create view views as
select rollno,name,marks from student69;

select * from views
where marks>90;

drop view views;
