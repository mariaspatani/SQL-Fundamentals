/*
Create a database for your company named XYZ
step 1: create a table inside the DB to store the employee info(id,name and salary)
step 2: Add following information in the DB
    1,"ADAM",25000
    2,"BOB",30000
    3,"Alex",40000
step3: select and view all your table datas
*/

CREATE DATABASE xyz_company;
USE xyz_company;

CREATE TABLE employee(
	id INT PRIMARY KEY,
    name VARCHAR(100),
    salary INT
);

INSERT INTO employee
(id,name,salary)
 VALUES
    (1,"ADAM",25000),
    (2,"BOB",30000),
    (3,"Alex",40000);
    
SELECT * FROM employee;
