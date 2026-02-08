CREATE TABLE Account (
    acc_no INT,
    name VARCHAR(50),
    balance INT
);

-- Transaction start
INSERT INTO Account VALUES (101, 'Anu', 5000);
INSERT INTO Account VALUES (102, 'Ravi', 8000);

-- Savepoint created
SAVEPOINT sp1;

UPDATE Account
SET balance = balance + 2000
WHERE acc_no = 101;

-- Another savepoint
SAVEPOINT sp2;

DELETE FROM Account
WHERE acc_no = 102;

-- Rollback to savepoint sp1
ROLLBACK TO sp1;

-- Commit the transaction
COMMIT;
