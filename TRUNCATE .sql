CREATE TABLE students (
    student_id INT,
    name VARCHAR(50),
    department VARCHAR(30)
);

INSERT INTO students VALUES (1, 'Anu', 'CSE');
INSERT INTO students VALUES (2, 'Rahul', 'ECE');
INSERT INTO students VALUES (3, 'John', 'EEE');

SELECT * FROM students;

TRUNCATE TABLE students;

SELECT * FROM students;

