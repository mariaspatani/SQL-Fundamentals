CREATE DATABASE abc;
USE abc;
CREATE TABLE dept (
    id INT PRIMARY KEY,
    name VARCHAR(50)
);
CREATE TABLE teacher (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES dept(id)
);
INSERT INTO dept VALUES
(1, 'Computer Science'),
(2, 'Electronics'),
(3, 'Mechanical');

INSERT INTO teacher VALUES
(101, 'Anu', 1),
(102, 'Rahul', 1),
(103, 'Merin', 2),
(104, 'Asha', 3);

SELECT * FROM dept;
SELECT * FROM teacher;
