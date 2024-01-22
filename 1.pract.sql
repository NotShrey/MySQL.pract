CREATE DATABASE stu1;
-- how to use  IF NOT EXITS it makes sures that if i previusly created a db of same name i will not be able to make another with the same name
CREATE DATABASE IF NOT EXISTS stu1; -- now this will only give a warning that i have the same db of same name
USE stu1;

CREATE TABLE stu1( 
		id INT PRIMARY KEY,
        name VARCHAR(20),
        age INT NOT NULL
        );
        
INSERT INTO stu1 VALUES(1,"SHREYAS",26);
INSERT INTO stu1 VALUES(2,"YEEZUS",7);

SELECT * FROM stu1;


-- now if i want to drop a db which i not created then it will give me an error
-- to avoid this we use if exists
-- eg ->

-- DROP DATABASE company; -- error
-- after

DROP DATABASE IF EXISTS company; -- warning

-- to show all the db we use->

SHOW DATABASES;

SHOW TABLES;


CREATE TABLE test1(
	rollno INT PRIMARY KEY,
    name VARCHAR(10)
	);
    
INSERT INTO test1 (rollno, name) 
			VALUES 
			(101,"yandhi"),
            (102,"SM");
INSERT INTO test1 VALUES (103,"CALM");

SELECT * FROM test1;

