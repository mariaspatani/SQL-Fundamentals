/*
For the given table, find the total payment according to each payment method.
Table: payment
| customer_id | customer          | mode        | city        |
| ----------- | ----------------- | ----------- | ----------- |
| 101         | Olivia Barrett    | Netbanking  | Portland    |
| 102         | Ethan Sinclair    | Credit Card | Miami       |
| 103         | Maya Hernandez    | Credit Card | Seattle     |
| 104         | Liam Donovan      | Netbanking  | Denver      |
| 105         | Sophia Nguyen     | Credit Card | New Orleans |
| 106         | Caleb Foster      | Debit Card  | Minneapolis |
| 107         | Ava Patel         | Debit Card  | Phoenix     |
| 108         | Lucas Carter      | Netbanking  | Boston      |
| 109         | Isabella Martinez | Netbanking  | Nashville   |
| 110         | Jackson Brooks    | Credit Card | Boston      |
*/
CREATE TABLE payment (
    customer_id INT PRIMARY KEY,
    customer VARCHAR(50),
    mode VARCHAR(20),
    city VARCHAR(30)
);
INSERT INTO payment VALUES
(101, 'Olivia Barrett', 'Netbanking', 'Portland'),
(102, 'Ethan Sinclair', 'Credit Card', 'Miami'),
(103, 'Maya Hernandez', 'Credit Card', 'Seattle'),
(104, 'Liam Donovan', 'Netbanking', 'Denver'),
(105, 'Sophia Nguyen', 'Credit Card', 'New Orleans'),
(106, 'Caleb Foster', 'Debit Card', 'Minneapolis'),
(107, 'Ava Patel', 'Debit Card', 'Phoenix'),
(108, 'Lucas Carter', 'Netbanking', 'Boston'),
(109, 'Isabella Martinez', 'Netbanking', 'Nashville'),
(110, 'Jackson Brooks', 'Credit Card', 'Boston');

SELECT mode, COUNT(*) AS total_payment
FROM payment
GROUP BY mode;
/*
GROUP BY mode groups records based on payment method
COUNT(*) calculates the total number of payments in each group
*/
