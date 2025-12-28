---UNIQUE
CREATE TABLE temp1(
	id INT UNIQUE
);

INSERT INTO temp1 VALUES(101);
INSERT INTO temp1 VALUES(102);
INSERT INTO temp1 VALUES(103);

SELECT * FROM temp1;

---PRIMARY KEY 
CREATE TABLE temp1(
	id INT ,
    name VARCHAR(100),
    age INT,
    city VARCHAR(20),
    PRIMARY KEY(id,name)---primary key is composite:So MySQL checks combination, not individual columns.
);

INSERT INTO temp1 (id, name, age, city)
VALUES 
(101, 'Anu', 20, 'Kochi'),
(101,'Rahul',22,'Kottayam'),
(102,'Merin',27,'Ernakulam');

SELECT * FROM temp1;
----FOREIGN KEY : prevent actions that would destroy links between tables
CREATE TABLE department (---parent table(primary key)
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);
CREATE TABLE employee (---child table(foreign key)
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES department(dept_id)
);
INSERT INTO department VALUES---insert into parent table first
(1, 'HR'),
(2, 'IT'),
(3, 'Finance');

INSERT INTO employee VALUES
(101, 'Anu', 1),
(102, 'Rahul', 2);
/*invalid insert below 
INSERT INTO employee VALUES
(103, 'Merin', 5);
Cannot add or update a child row:
a foreign key constraint fails
Because dept_id = 5 does not exist in department.

		FOREIGN KEY with ON DELETE / ON UPDATE
FOREIGN KEY (dept_id)
REFERENCES department(dept_id)
ON DELETE CASCADE
ON UPDATE CASCADE;
	Meaning:
ON DELETE CASCADE → delete child rows automatically

ON UPDATE CASCADE → update child rows automatically
*/

---DEFAULT : sets the default value of a column
CREATE TABLE student (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT DEFAULT 18,
    city VARCHAR(30) DEFAULT 'Unknown'
);
INSERT INTO student (id, name)
VALUES (101, 'Anu');

SELECT * FROM student;

