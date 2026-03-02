CREATE DATABASE Project;

USE Project;

CREATE TABLE ORDERS(
order_id int,
order_time double,
customer_id varchar(20),
customer_name varchar(50),
address_pincode int,
apartment_floor int
);

SELECT order_id
FROM Orders
WHERE order_time IS NULL OR order_time="";

SELECT * 
FROM Orders
WHERE order_time>=12 AND order_time<=13;

SELECT * 
FROM Orders
ORDER BY apartment_floor;

SELECT DISTINCT customer_id 
FROM Orders
WHERE customer_name LIKE "%a";