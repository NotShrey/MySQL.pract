-- Create a database for your company named XYZ.
-- Stepl . create a table inside this DB to store employee info (id, name and salary).
-- Step2 : Add following information in the DB •
-- 1, "adam", 25000
-- 2, "bob", 30000
-- 3, "casey", 40000
-- Step3 : Select & view all your table data.


CREATE DATABASE XYZ;
USE XYZ;

CREATE TABLE EMP_INFO(
	ID INT PRIMARY KEY,
    NAME VARCHAR(10),
    SAL INT
);

INSERT INTO EMP_INFO
	-- (ID,NAME,SAL) 
		VALUES
			(18, "adam", 25000),
            (20, "bob", 30000),
            (38, "casey", 40000);

SELECT * FROM EMP_INFO;