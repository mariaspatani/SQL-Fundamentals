
--To create triggers for INSERT and DELETE operations and demonstrate their working.

--PROGRAM:

-- Step 1: Create EMP table
CREATE TABLE emp (
empid NUMBER PRIMARY KEY,
name VARCHAR2(20),
salary NUMBER
);

-- Step 2: Insert records
INSERT INTO emp VALUES (1, 'A', 20000);
INSERT INTO emp VALUES (2, 'B', 25000);
INSERT INTO emp VALUES (3, 'C', 30000);

-- Step 3: Display records
SELECT * FROM emp;

-- Step 4: Create AFTER INSERT trigger
CREATE OR REPLACE TRIGGER trg_insert
AFTER INSERT ON emp
FOR EACH ROW
BEGIN
DBMS_OUTPUT.PUT_LINE('Row inserted successfully');
END;
/

-- Step 5: Test insert trigger
INSERT INTO emp VALUES (4, 'D', 40000);

-- Step 6: Create trigger to prevent DELETE
CREATE OR REPLACE TRIGGER trg_delete
BEFORE DELETE ON emp
FOR EACH ROW
BEGIN
RAISE_APPLICATION_ERROR(-20001, 'Deletion not allowed');
END;
/

-- Step 7: Create table to store deleted records
CREATE TABLE deleted_emp (
empid NUMBER,
name VARCHAR2(20),
salary NUMBER
);

-- Step 8: Drop previous delete trigger (to allow delete)
DROP TRIGGER trg_delete;

-- Step 9: Create AFTER DELETE trigger
CREATE OR REPLACE TRIGGER trg_store_delete
AFTER DELETE ON emp
FOR EACH ROW
BEGIN
INSERT INTO deleted_emp
VALUES(:OLD.empid, :OLD.name, :OLD.salary);
END;
/

-- Step 10: Perform delete
DELETE FROM emp WHERE empid = 1;

-- Step 11: Display final tables
SELECT * FROM emp;
SELECT * FROM deleted_emp;

