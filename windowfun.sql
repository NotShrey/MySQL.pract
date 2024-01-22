create database wfun;
use wfun;

-- Create the table
CREATE TABLE employee (
    emp_id INT,
    emp_name VARCHAR(50),
    dept_name VARCHAR(50),
    salary INT
);

-- Insert the data
INSERT INTO employee (emp_id, emp_name, dept_name, salary)
VALUES
    (101, 'Mohan', 'Admin', 4000),
    (102, 'Rajkumar', 'IT', 3000),
    (103, 'Akbar', 'Finance', 4000),
    (104, 'Dorvin', 'Finance', 6500),
    (105, 'Rohit', 'IT', 3000),
    (106, 'Rajesh', 'Admin', 5000),
    (107, 'Preet', 'Finance', 7000);

-- Insert the additional data into the employee table
INSERT INTO employee (emp_id, emp_name, dept_name, salary)
VALUES
    (114, 'Manisha', 'Finance', 3000),
    (115, 'Chandni', 'Finance', 4500),
    (116, 'Satya', 'Admin', 6500),
    (117, 'Adarsh', 'Finance', 3500),
    (118, 'Tejaswi', 'Finance', 5500),
    (119, 'Cory', 'Admin', 8000),
    (120, 'Monica', 'Finance', 5000),
    (121, 'Rusaiill', 'Finance', 6000);

-- find max salary of each departent 

select *, -- select the whole table
max(salary) over(partition by dept_name) as max_sal -- 1st taking max salary of all the employees the using window function over as max sal and the partitioning them on the basis of dept name
from employee; -- from employee table

select *,
row_number() over(partition by dept_name order by emp_id) as rn
from employee;

select * from(
	select *, 
	row_number() over(partition by dept_name order by emp_id) as rn
	from employee) x
where x.rn<2;

select *,
rank() over(partition by dept_name order by salary desc) as ans
from employee;

select * from(
	select *,
    rank() over(partition by dept_name order by salary desc) as ans
    from employee )x
where x.ans < 3;

select *,
lag (salary) over(partition by dept_name order by emp_id) as ans
from employee;
    

SELECT
    emp_id,
    emp_name,
    dept_name,
    salary,
    CASE
        WHEN salary > LAG(salary) OVER (PARTITION BY dept_name ORDER BY emp_id) THEN 'Higher than previous employee'
        WHEN salary < LAG(salary) OVER (PARTITION BY dept_name ORDER BY emp_id) THEN 'Lower than previous employee'
        ELSE 'Same as previous employee'
    END AS prev_emp_salary_tag
FROM employee;
