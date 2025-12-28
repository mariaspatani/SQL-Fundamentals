--- Write the Query to find avg marks in each city in ascending order
SELECT city, AVG(marks) AS avg_marks
FROM student
GROUP BY city
ORDER BY avg_marks ASC;
