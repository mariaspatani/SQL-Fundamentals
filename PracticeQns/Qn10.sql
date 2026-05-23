--Employees whose salary is less than average salary
SELECT emp_name,salary
FROM EMP
WHERE salary<(
    SELECT AVG(salary)
    FROM EMP
);
