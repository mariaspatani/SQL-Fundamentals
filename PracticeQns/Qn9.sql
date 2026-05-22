--ACCOUNT(acc_no,cust_name,balance)
--TRANSACTION(trans_id,acc_no,amount,t_date)
CREATE TABLE ACCOUNT(
    acc_no INT PRIMARY KEY,
    cust_name VARCHAR(50),
    balance INT
);
INSERT INTO ACCOUNT VALUES(101,'ARUN',1000);
INSERT INTO ACCOUNT VALUES(102,'LEENA',1400);
INSERT INTO ACCOUNT VALUES(103,'RAHUL',2000);

CREATE TABLE TRANSACTION(
    trans_id INT PRIMARY KEY,
    acc_no INT,
    amount INT,
    t_date VARCHAR(50),
    FOREIGN KEY(acc_no) references account(acc_no)
);
INSERT INTO TRANSACTION VALUES(1,101,500,'10-SEP-2023');
INSERT INTO TRANSACTION VALUES(2,102,600,'03-MAR-2021');
INSERT INTO TRANSACTION VALUES(3,103,700,'01-JAN-2020');

--Increase balance of account no 101 by 5000.
UPDATE ACCOUNT
set balance=balance+5000
where acc_no=101;

SELECT * from account;
--Delete transactions on '1-JAN-2020'.
DELETE FROM TRANSACTION
where t_date = '01-JAN-2020';

--Display total transaction amount for each account.
--each=group
--total=SUM
SELECT acc_no,SUM(amount) as total_amount
from TRANSACTION
group by acc_no;
--Display customer name and transaction amount.
SELECT c.cust_name,c.acc_no,t.amount
from account c JOIN transaction t
ON c.acc_no=t.acc_no;
--Display customer having maximum balance
SELECT acc_no,cust_name
from account
where balance=
    (
        select max(balance) as max_balance
        from account
    );
