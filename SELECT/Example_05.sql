---SELECT with BETWEEN
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

SELECT name, marks
FROM student
WHERE marks BETWEEN 70 AND 90;
