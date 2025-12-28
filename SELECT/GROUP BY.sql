-- View all records
SELECT * FROM student;

-- 1. Count students in each city
SELECT city, COUNT(*) AS total_students
FROM student
GROUP BY city;

-- 2. Average marks in each city
SELECT city, AVG(marks) AS avg_marks
FROM student
GROUP BY city;

-- 3. Highest marks in each city
SELECT city, MAX(marks) AS highest_marks
FROM student
GROUP BY city;

-- 4. Lowest marks in each city
SELECT city, MIN(marks) AS lowest_marks
FROM student
GROUP BY city;

-- 5. Multiple aggregates with GROUP BY
SELECT city,
       COUNT(*) AS total_students,
       AVG(marks) AS avg_marks,
       MAX(marks) AS max_marks,
       MIN(marks) AS min_marks
FROM student
GROUP BY city;

-- 6. GROUP BY with WHERE (filter rows before grouping)
SELECT city, COUNT(*) AS total_students
FROM student
WHERE marks > 70
GROUP BY city;

-- 7. GROUP BY with HAVING (filter groups)
SELECT city, AVG(marks) AS avg_marks
FROM student
GROUP BY city
HAVING AVG(marks) > 75;

-- 8. GROUP BY on multiple columns
SELECT city, age, COUNT(*) AS total_students
FROM student
GROUP BY city, age;
