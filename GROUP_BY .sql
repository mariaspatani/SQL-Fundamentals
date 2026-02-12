-- Create Database
CREATE DATABASE college_db;

-- Use Database
USE college_db;

-- Create Table
CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(20),
    marks INT
);

-- Insert Records
INSERT INTO students VALUES
(1, 'Arun', 'CSE', 85),
(2, 'Meera', 'CSE', 78),
(3, 'Rahul', 'ECE', 90),
(4, 'Anjali', 'ECE', 70),
(5, 'Vishnu', 'MECH', 60),
(6, 'Sneha', 'CSE', 88);

-- GROUP BY Example (Department-wise Count)
SELECT department, COUNT(*) AS total_students
FROM students
GROUP BY department;

-- GROUP BY with HAVING (More than 2 students)
SELECT department, COUNT(*) AS total_students
FROM students
GROUP BY department
HAVING COUNT(*) > 2;

-- Department-wise Average Marks
SELECT department, AVG(marks) AS average_marks
FROM students
GROUP BY department;
