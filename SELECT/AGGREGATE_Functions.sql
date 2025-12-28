-- View table
SELECT * FROM student;

-- COUNT
SELECT COUNT(*) AS total_students FROM student;
SELECT COUNT(city) AS students_with_city FROM student;

-- SUM
SELECT SUM(marks) AS total_marks FROM student;

-- AVG
SELECT AVG(marks) AS average_marks FROM student;

-- MAX
SELECT MAX(marks) AS highest_marks FROM student;

-- MIN
SELECT MIN(marks) AS lowest_marks FROM student;

-- Aggregate with WHERE
SELECT COUNT(*) FROM student WHERE city = 'Kochi';
SELECT AVG(marks) FROM student WHERE age > 20;

-- Aggregate with DISTINCT
SELECT COUNT(DISTINCT city) AS total_cities FROM student;

-- GROUP BY
SELECT city, COUNT(*) AS total_students
FROM student
GROUP BY city;

SELECT city, AVG(marks) AS avg_marks
FROM student
GROUP BY city;

-- GROUP BY with HAVING
SELECT city, AVG(marks) AS avg_marks
FROM student
GROUP BY city
HAVING AVG(marks) > 75;

-- Multiple aggregates together
SELECT
    COUNT(*) AS total_students,
    SUM(marks) AS total_marks,
    AVG(marks) AS avg_marks,
    MAX(marks) AS max_marks,
    MIN(marks) AS min_marks
FROM student;
