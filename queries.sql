create database subq;
use subq;

-- Create a table to store the data
CREATE TABLE store_products (
    store_id INT,
    store_name VARCHAR(50),
    product_name VARCHAR(50),
    quantity INT,
    price INT
);

-- Insert the provided values into the table
INSERT INTO store_products (store_id, store_name, product_name, quantity, price)
VALUES
    (1, 'Apple Store 1', 'iPhone 13 Pro', 3, 1000),
    (1, 'Apple Store 1', 'MacBook Pro 14', 2, 6000),
    (1, 'Apple Store 1', 'AirPods Pro', 2, 500),
    (2, 'Apple Store 2', 'iPhone 13 Pro', 1000, 2000),
    (3, 'Apple Store 3', 'iPhone 12 Pro', 750, 2000);
    
select store_name , sum(price) as ts	
from store_products
group by store_name;


select avg(ts)
from(select store_name , sum(price) as ts	
from store_products
group by store_name) as x;


SELECT *
FROM (
    SELECT store_name, SUM(price) AS total_sales
    FROM sales
    GROUP BY store_name
) sales
JOIN (
    SELECT AVG(total_sales) AS avg_sales
    FROM (
        SELECT store_name, SUM(price) AS total_sales
        FROM sales
        GROUP BY store_name
    ) x
) avg_sales
ON sales.total_sales > avg_sales.avg_sales;

drop table store_products;


-- Create the "dept" table
CREATE TABLE dept (
    dept_id INTEGER PRIMARY KEY,
    dept_name VARCHAR(50)
);

-- Insert data into the "dept" table
INSERT INTO dept (dept_id, dept_name)
VALUES
    (2, 'Admin'),
    (3, 'Finance'),
    (4, 'Finance');

-- Create the "emp" table
CREATE TABLE emp (
    emp_id INTEGER PRIMARY KEY,
    emp_name VARCHAR(50),
    dept_id INTEGER,
    salary INTEGER
);

-- Insert data into the "emp" table
INSERT INTO emp (emp_id, emp_name, dept_id, salary)
VALUES
    (101, 'Mohan', 2, 4000),
    (102, 'Rajkumar', 3, 3000),
    (103, 'Akbar', 3, 4000),
    (104, 'Dorvin', 6, 6500),
    (106, 'Rajesh', 4, 5000);
    
select * from emp;


-- Create the "employees" table
CREATE TABLE employees (
    emp_id INTEGER PRIMARY KEY,
    emp_name VARCHAR(50),
    salary INT
);

-- Insert data into the "employees" table
INSERT INTO employees (emp_id, emp_name, salary)
VALUES
    (101, 'Mohan', 4000.00),
    (102, 'James', 50000), -- Corrected the salary value
    (103, 'Rohin', 60000), -- Corrected the salary value
    (104, 'Carol', 70000), -- Corrected the salary value
    (106, 'Alice', 80000), -- Corrected the salary value
    (107, 'Jimmy', 90000); -- Corrected the salary value
  
WITH avgsal (avg_sal) AS (SELECT AVG(salary) FROM employees)
SELECT * FROM employees e, avgsal avg_sal
WHERE e.salary > avg_sal.avg_sal;

SHOW TABLES;

-- Create the "store_products" table
CREATE TABLE store_productss (
    store_id INTEGER,
    store_name VARCHAR(50),
    product VARCHAR(50),
    quantity INTEGER,
    cost INTEGER
);

-- Insert data into the "store_products" table
INSERT INTO store_productss (store_id, store_name, product, quantity, cost)
VALUES
    (1, 'Apple Originals 1', 'iPhone 12 Pro', 3, 1000),
    (1, 'Apple Originals 1', 'MacBook Pro 13', 2, 2000),
    (1, 'Apple Originals 1', 'AirPods Pro', 2, 280),
    (2, 'Apple Originals 2', 'iPhone 12 Pro', 1, 1000),
    (3, 'Apple Originals 3', 'iPhone 12 Pro', 4, 1000),
    (3, 'Apple Originals 3', 'MacBook Pro 13', 2, 2000),
    (3, 'Apple Originals 3', 'MacBook Air', 3, 1100),
    (3, 'Apple Originals 3', 'iPhone 12', 2, 1000),
    (3, 'Apple Originals 3', 'AirPods Pro', 280, 2500),
    (4, 'Apple Originals 4', 'iPhone 12 Pro', 1000, 1000),
    (4, 'Apple Originals 4', 'MacBook Pro 13', 2500, 2000);
    
select s.store_id, sum(cost) as total
from store_productss s
group by s.store_id;
