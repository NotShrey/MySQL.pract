-- a priamry key must be unique and not null
-- when table 1 uses the primary key of table 2 then it is called as a forign key 
-- table 1 can have multiple forign keys 
-- forign keys can have duplicate values and it can also have null values 

-- constraints are the predefinied rules we set in a table
 -- NOT NULL in this we cannot store NULL values of a column in a table
 -- UNIQUE in this we cannot store same data values in a column of a table 
 
 
 CREATE DATABASE keyus;
 
 USE keyus;
 
CREATE TABLE goat(
ID INT PRIMARY KEY,
ALBUM varchar(10)
);

CREATE TABLE SUI69( 
ronaldo VARCHAR(10),
no INT unique,
PRIMARY KEY (ronaldo)
);

-- in this the combination of no and ronaldo should be unique
CREATE TABLE SUI59( 
ronaldo VARCHAR(10),
no INT unique,
PRIMARY KEY (ronaldo,no)
);

-- INSERT INTO SUI values(11),(11); this is not possible
INSERT INTO SUI values(11),(69);


-- forign key is used to prevent destorying the links between 2 tables
-- DEFAULT is used to set a default val incase the input val is null  

CREATE TABLE emp3(
id INT primary key,
sal INT DEFAULT 25000
);
 
insert into emp3 (id) values(101);
 
SELECT * FROM emp3;

DROP TABLE emp;


-- check constraints allows us to limit the values in a column 

create table city (
id INT PRIMARY KEY,
city VARCHAR(10),
age INT,
CONSTRAINT CHECK (age>= 18 AND  city = "delhi")
);

INSERT INTO city VALUES(101,"delhi",99),(102,"berhmapur",89);
 