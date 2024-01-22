CREATE DATABASE pract5;
use pract5;

create table dept(
id int primary key,
subjects varchar(10)
);

insert into dept values(101,"english"),(102,"french");

update dept
set id = 69
where id = 102;

CREATE TABLE teacher (
id INT PRIMARY KEY,
name VARCHAR(50),
dept_id int,
FOREIGN KEY (dept_id) REFERENCES dept(id)
on update cascade
on delete cascade
);

insert into teacher values(201,"kanye",101),(202,"carti",102);

select * from dept;
select * from teacher;

alter table teacher 
add column age int not null;

insert into teacher(age) values(19),(43);

-- Update the "age" column for specific rows
UPDATE teacher
SET age = 19
WHERE id = 201;

-- Update the "age" column for another row
UPDATE teacher
SET age = 43
WHERE id = 202;

-- delete a column of a table
alter table teacher drop column age;

-- rename a table name
alter table teacher rename to professor;

-- Column (rename)
-- ALTER TABLE table-name
-- CHANGE COLUM N old- name new_name new_ datatype new_ constraint;

alter table teacher 
add column test int;

alter table teacher 
change column test extra varchar(10) unique;

select * from teacher;

alter table teacher drop column extra;

-- ALTER TABLE table-name
-- MODIFY col_ name new_datatype new_ constraint;

alter table teacher
add column phno int not null default 69;

select * from teacher;

alter table teacher
modify column age varchar(5);

INSERT INTO teacher value (203,"drake",666,666666,23);

alter table teacher 
change age lifespan int; 
-- drop deletes the table 
-- truncate deletes the table content

truncate table teacher;

