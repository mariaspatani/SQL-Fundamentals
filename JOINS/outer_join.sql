-- FULL OUTER JOIN Example

SELECT Customers.customer_name, Orders.product_name
FROM Customers
FULL OUTER JOIN Orders
ON Customers.customer_id = Orders.customer_id;
