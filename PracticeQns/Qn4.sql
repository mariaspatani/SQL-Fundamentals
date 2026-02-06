/*Bank Management System
Tables: CUSTOMER (cid, cname, city)
ACCOUNT(accno, cid, balance)
Questions
1) Display all customer details.
2)List customers who belong to Chennai.
3)Display customer name along with account number and balance.
4)Find the total balance available in the bank.
5)Display customers who have an account balance greater than 50,000.
6)Count the total number of accounts in the bank.
7)Find the average account balance.
8)Delete all accounts with balance less than 1,000.*/

-- Create CUSTOMER table
CREATE TABLE customer (
    cid INT PRIMARY KEY,
    cname VARCHAR(30),
    city VARCHAR(20)
);

-- Create ACCOUNT table
CREATE TABLE account (
    accno INT PRIMARY KEY,
    cid INT,
    balance INT,
    FOREIGN KEY (cid) REFERENCES customer(cid)
);

-- Insert values into CUSTOMER
INSERT INTO customer VALUES (1, 'Ravi', 'Chennai');
INSERT INTO customer VALUES (2, 'Anu', 'Kochi');
INSERT INTO customer VALUES (3, 'Meena', 'Chennai');
INSERT INTO customer VALUES (4, 'Suresh', 'Bangalore');

-- Insert values into ACCOUNT
INSERT INTO account VALUES (101, 1, 60000);
INSERT INTO account VALUES (102, 2, 45000);
INSERT INTO account VALUES (103, 3, 80000);
INSERT INTO account VALUES (104, 4, 900);

-- Display all customer details
SELECT * FROM customer;

-- List customers who belong to Chennai
SELECT * FROM customer
WHERE city = 'Chennai';

-- Display customer name with account number and balance
SELECT customer.cname, account.accno, account.balance
FROM customer
INNER JOIN account
ON customer.cid = account.cid;

-- Find total balance available in bank
SELECT SUM(balance) AS total_balance
FROM account;

-- Display customers with balance greater than 50000
SELECT customer.cname
FROM customer
INNER JOIN account
ON customer.cid = account.cid
WHERE account.balance > 50000;

-- Count total number of accounts
SELECT COUNT(*) AS total_accounts
FROM account;

-- Find average account balance
SELECT AVG(balance) AS average_balance
FROM account;

-- Delete accounts with balance less than 1000
DELETE FROM account
WHERE balance < 1000;
