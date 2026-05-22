--CUSTOMER(cust_id,cust_name,city)
--PRODUCT(product_id,product_name,price,cust_id)
CREATE TABLE customer(
    cust_id INT PRIMARY KEY,
    cust_name VARCHAR(50),
    city VARCHAR(50)
);
INSERT INTO customer VALUES(1,'Arun','Kottayam');
INSERT INTO customer VALUES(2,'Cindra','Kollam');
INSERT INTO customer VALUES(3,'Tom','Pala');

CREATE TABLE products(
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    price INT,
    cust_id INT,
    FOREIGN KEY(cust_id) references customer(cust_id)
);

INSERT INTO products values(101,'Book',50,1);
INSERT INTO products values(102,'Pen',30,2);
INSERT INTO products values(103,'Tv',28000,3);

--Increase product price by 10%.
UPDATE PRODUCTS
SET price=price + (price*0.10);

SELECT * from products;
--Display customers from Kochi
SELECT cust_id,cust_name
from  customer
where city='Kottayam';

--Display total products purchased by each customer.
--each=group by
--total=count
SELECT cust_id, COUNT(product_id)
from PRODUCTS
GROUP BY cust_id;

--Display customer name and product name.
SELECT c.cust_name,p.product_name
from customer c JOIN products p
ON c.cust_id=p.cust_id;

--Display most expensive product.
SELECT product_id,product_name
from PRODUCTS
where price =
    (
        select MAX(price) 
        from PRODUCTS
        
    );
--Create view containing customer name and product details.
CREATE VIEW V2 AS
SELECT c.cust_name,p.product_id,p.product_name
from customer c JOIN products p 
on c.cust_id=p.cust_id;
