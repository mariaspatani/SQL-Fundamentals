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
(105, 'Akhil', 23, 'Trivandrum', 55);

SELECT * FROM student;

UPDATE student SET marks = 70 WHERE id = 104;

UPDATE student SET age = 24, city = 'Kochi' WHERE id = 105;

UPDATE student SET marks = marks + 5 WHERE city = 'Kochi';

UPDATE student SET age = age + 1 WHERE id = 101;

UPDATE student SET city = NULL WHERE id = 103;

UPDATE student
SET marks = (SELECT AVG(marks) FROM student)---(SELECT AVG(marks) FROM student) → average marks of all students,That average value is assigned to Rahul (id = 102)
WHERE id = 102;

UPDATE student SET marks = 60;

UPDATE student SET marks = 100 LIMIT 1;

SELECT * FROM student;
