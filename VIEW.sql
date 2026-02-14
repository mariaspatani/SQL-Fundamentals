/*CREATE VIEW view_name AS
SELECT column1, column2
FROM table_name
WHERE condition;
*/

CREATE VIEW CustomerOrders AS
SELECT CustomerID, COUNT(*) AS TotalOrders
FROM Orders
GROUP BY CustomerID;

SELECT * FROM CustomerOrders;
