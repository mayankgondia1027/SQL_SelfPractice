CREATE DATABASE payment;
USE payment;

CREATE TABLE customers(
customer_id INT PRIMARY KEY,
customername VARCHAR(50),
mode VARCHAR(20),
city VARCHAR(20)
);

INSERT INTO customers
(customer_id, customername, mode, city)
VALUES
(101,"olivia barrett","netbanking","poland"),
(102, "ethan sinclair","credit card","miami"),
(103,"maya","credit card","seattle"),
(104,"liam donven","netbanking","denver"),
(105,"sophia","credit card","boston");

SELECT * FROM customers;
SELECT mode,COUNT(customername) from customers GROUP BY mode;