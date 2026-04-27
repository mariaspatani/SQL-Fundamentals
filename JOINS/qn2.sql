CREATE TABLE CUSTOMER(
    cust_id NUMBER PRIMARY KEY,
    cust_name VARCHAR2(20),
    city VARCHAR2(20)
);

CREATE TABLE ORDERED(
    order_id NUMBER PRIMARY KEY,
    cust_id NUMBER,
    amount NUMBER,
    FOREIGN KEY (cust_id) REFERENCES CUSTOMER(cust_id)
);

INSERT INTO CUSTOMER VALUES(1,'Arun','Kochi');
INSERT INTO CUSTOMER VALUES(2,'Bina','Trivandrum');
INSERT INTO CUSTOMER VALUES(3,'Cyril','Thrissur');
INSERT INTO CUSTOMER VALUES(4,'Diya','Kozhikode');
INSERT INTO CUSTOMER VALUES(5,'Ebin','Kochi');

INSERT INTO ORDERED VALUES(101,1,5000);
INSERT INTO ORDERED VALUES(102,2,7000);
INSERT INTO ORDERED VALUES(103,1,3000);
INSERT INTO ORDERED VALUES(104,3,9000);
INSERT INTO ORDERED VALUES(105,4,2000);

--Display customer name and their order amount using JOIN.
SELECT c.cust_name,o.amount
from customer c JOIN ordered o
on c.cust_id=o.cust_id;

--Find the customer who placed the highest order.
select cust_name
from customer where cust_id IN(
    select cust_id from ordered where amount = (select max(amount) from ordered)
);

--Find customers whose order amount is greater than average order amount
select cust_name
from customer where cust_id IN(
    select cust_id 
    from ordered 
    where amount > (select avg(amount) from ordered)
);
--Display customers who have not placed any orders.
SELECT cust_name
from customer where cust_id not in (
    select cust_id from ordered
);

--Count number of orders for each customer
select c.cust_name,count(o.order_id)AS total_count
from customer c JOIN ordered o
ON c.cust_id=o.cust_id
GROUP BY c.cust_name

--Delete orders of customers from ‘Kochi’
delete from ordered
where cust_id NOT IN(
    select cust_id from customer where city='Kochi'
);
--Delete customers who have not placed any orders
DELETE FROM CUSTOMER
WHERE cust_id NOT IN (
    SELECT cust_id FROM ORDERS
);
