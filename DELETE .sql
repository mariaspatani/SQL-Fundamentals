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

-- View table
SELECT * FROM student;

-- 1. Delete a specific record (using PRIMARY KEY)
DELETE FROM student
WHERE id = 104;

-- 2. Delete using condition
DELETE FROM student
WHERE city = 'Kochi';

-- 3. Delete records based on marks
DELETE FROM student
WHERE marks < 60;

-- 4. Delete using multiple conditions
DELETE FROM student
WHERE city = 'Kottayam' AND age > 21;

-- 5. Delete all records (⚠️ table remains)
DELETE FROM student;

-- 6. Delete with LIMIT (MySQL only)
DELETE FROM student
LIMIT 1;

-- Safer LIMIT with ORDER BY
DELETE FROM student
ORDER BY id
LIMIT 1;

-- Final table check
SELECT * FROM student;
