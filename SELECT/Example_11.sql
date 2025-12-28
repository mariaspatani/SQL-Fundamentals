---SELECT with aggregate functions
--COUNT
CREATE TABLE student (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    city VARCHAR(30),
    marks INT
);
INSERT INTO student VALUES
(101, 'Anu', 20, 'Kochi', 85),
(102, 'Rahul', 22, 'Kottayam', 78),
(103, 'Merin', 21, 'Ernakulam', 92),
(104, 'Asha', 19, 'Kochi', 65);

SELECT COUNT(*) FROM student;

---MAX / MIN / AVG
CREATE TABLE student (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    city VARCHAR(30),
    marks INT
);
INSERT INTO student VALUES
(101, 'Anu', 20, 'Kochi', 85),
(102, 'Rahul', 22, 'Kottayam', 78),
(103, 'Merin', 21, 'Ernakulam', 92),
(104, 'Asha', 19, 'Kochi', 65);

SELECT MAX(marks) FROM student;
SELECT MIN(marks) FROM student;
SELECT AVG(marks) FROM student;
