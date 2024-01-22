-- Practice Qs
-- Qs: In the student table :
-- a. Change the name of columns to "full-name".
-- b. Delete all the students who scored marks less than 80.
-- c.Delete the column for grades.

alter table student
change name full_name int;

delete from student
where marks < 80;

alter table student
drop column grade; 