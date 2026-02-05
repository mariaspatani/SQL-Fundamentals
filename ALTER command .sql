CREATE TABLE Student (
    id INT,
    name VARCHAR(50)
);
/*Add a column age to the table:*/
ALTER TABLE Student
ADD age INT;

/*ADD multiple columns*/
ALTER TABLE Student
ADD (gender VARCHAR(10), email VARCHAR(50));

/*MODIFY a column (change datatype/size)
Change size of name column:*/
ALTER TABLE Student
MODIFY name VARCHAR(100);

/*RENAME a column*/
ALTER TABLE Student
RENAME COLUMN name TO full_name;

/*DROP a column
Remove the email column:*/
ALTER TABLE Student
DROP COLUMN email;

/*ADD a PRIMARY KEY*/
ALTER TABLE Student
ADD CONSTRAINT pk_student PRIMARY KEY (id);

/*DROP a PRIMARY KEY*/
ALTER TABLE Student
DROP PRIMARY KEY;

/*ADD a UNIQUE constraint*/
ALTER TABLE Student
ADD CONSTRAINT uq_email UNIQUE (email);

/*RENAME the table*/
ALTER TABLE Student
RENAME TO Students;
