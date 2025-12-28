-- View all records
SELECT * FROM student;

-- 1. First 3 rows
SELECT * FROM student
LIMIT 3;

-- 2. Top scorer (highest marks)
SELECT * FROM student
ORDER BY marks DESC
LIMIT 1;

-- 3. Top 3 students
SELECT * FROM student
ORDER BY marks DESC
LIMIT 3;

-- 4. Lowest marks
SELECT * FROM student
ORDER BY marks ASC
LIMIT 1;

-- 5. Skip first 2 rows, show next 2 rows (OFFSET example)
SELECT * FROM student
LIMIT 2, 2;

-- 6. Second highest marks (classic exam question)
SELECT * FROM student
ORDER BY marks DESC
LIMIT 1, 1;

-- 7. LIMIT with WHERE condition
SELECT * FROM student
WHERE city = 'Kochi'
LIMIT 2;

-- 8. LIMIT with DISTINCT
SELECT DISTINCT city
FROM student
LIMIT 2;

-- 9. Pagination example
-- Page 1 (first 2 records)
SELECT * FROM student
LIMIT 0, 2;

-- Page 2 (next 2 records)
SELECT * FROM student
LIMIT 2, 2;

-- Page 3 (next 2 records)
SELECT * FROM student
LIMIT 4, 2;
