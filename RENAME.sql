CREATE TABLE student (
    id INT,
    name VARCHAR(50),
    age INT
);

RENAME TABLE student TO students;

ALTER TABLE student RENAME TO students;

ALTER TABLE students
RENAME COLUMN name TO student_name;

INSERT INTO students VALUES (1, 'Anu', 20);
INSERT INTO students VALUES (2, 'Rahul', 21);

SELECT * FROM students;
