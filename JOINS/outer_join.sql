-- CROSS JOIN Example

SELECT Customers.customer_name, Orders.product_name
FROM Customers
CROSS JOIN Orders;
