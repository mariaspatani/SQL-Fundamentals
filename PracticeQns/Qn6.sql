CREATE TABLE Custoo(
    cust_no NUMBER PRIMARY KEY,
    cust_name  VARCHAR(50),
    gender VARCHAR(50),
    phone NUMBER
);
INSERT INTO custoo VALUES(101,'Arun','Male',3456789012);
INSERT INTO custoo VALUES(102,'Babu','Male',4567890123);
INSERT INTO custoo VALUES(103,'Cindra','Female',5678901234);

SELECT * FROM custoo;

CREATE TABLE itemoo(
    item_id NUMBER PRIMARY KEY,
    item_name VARCHAR(50),
    item_qty NUMBER,
    item_price NUMBER,
    cust_no NUMBER,
    FOREIGN KEY(cust_no) REFERENCES custoo(cust_no)
);
INSERT INTO itemoo VALUES (1,'Furnicture',5,10000,101);
INSERT INTO itemoo VALUES (2,'Utensills',14,1000,102);
INSERT INTO itemoo VALUES (3,'TV',3,26000,103);
--display all male customer those phone number with'345'
SELECT * from CUSTOO
where gender='Male' and
TO_CHAR(phone) LIKE '345%';
--display no of male and female customers
Select COUNT(gender) as total_no
from custoo;

-- display the details of all customers who bought more than 3 quantities of items
select c.* , i.item_name
from custoo c JOIN itemoo i
on c.cust_no=i.CUST_NO
WHERE i.item_qty>3;




