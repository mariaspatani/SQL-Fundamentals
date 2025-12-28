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
(104, 'Asha', 19, 'Kochi', 65),
(105, 'Akhil', 23, NULL, 55);

-- Arithmetic Operators
SELECT id, marks, marks + 5 AS bonus_marks FROM student;
SELECT id, marks, marks - 5 AS reduced_marks FROM student;
SELECT id, marks, marks * 2 AS double_marks FROM student;
SELECT id, marks, marks / 2 AS half_marks FROM student;
SELECT id, marks, marks % 10 AS remainder FROM student;

-- Comparison Operators
SELECT * FROM student WHERE marks > 80;
SELECT * FROM student WHERE age < 21;
SELECT * FROM student WHERE city = 'Kochi';
SELECT * FROM student WHERE city != 'Kochi';
SELECT * FROM student WHERE marks >= 75;
SELECT * FROM student WHERE marks <= 60;

-- Logical Operators
SELECT * FROM student WHERE city = 'Kochi' AND marks > 70;
SELECT * FROM student WHERE city = 'Kochi' OR city = 'Ernakulam';
SELECT * FROM student WHERE NOT city = 'Kochi';

-- BETWEEN
SELECT * FROM student WHERE marks BETWEEN 70 AND 90;

-- IN
SELECT * FROM student WHERE city IN ('Kochi', 'Kottayam');

-- LIKE
SELECT * FROM student WHERE name LIKE 'A%';
SELECT * FROM student WHERE name LIKE '%u';
SELECT * FROM student WHERE name LIKE '%h%';

-- NULL check
SELECT * FROM student WHERE city IS NULL;
SELECT * FROM student WHERE city IS NOT NULL;

-- DISTINCT
SELECT DISTINCT city FROM student;

-- ORDER BY
SELECT * FROM student ORDER BY marks DESC;
SELECT * FROM student ORDER BY name ASC;

-- Aggregate functions
SELECT COUNT(*) FROM student;
SELECT MAX(marks) FROM student;
SELECT MIN(marks) FROM student;
SELECT AVG(marks) FROM student;
SELECT SUM(marks) FROM student;

-- GROUP BY & HAVING
SELECT city, COUNT(*) AS total_students
FROM student
GROUP BY city;

SELECT city, AVG(marks) AS avg_marks
FROM student
GROUP BY city
HAVING AVG(marks) > 75;
