CREATE TABLE orders (
order_id INT,
customer VARCHAR(20),
region VARCHAR(10),
amount INT
);
INSERT INTO orders VALUES
(1, 'C1', 'North', 500),
(2, 'C2', 'North', 700),
(3, 'C3', 'North', 700),
(4, 'C4', 'South', 300),
(5, 'C5', 'South', 600),
(6, 'C6', 'South', 900),
(7, 'C7', 'East', 400),
(8, 'C8', 'East', 400),
(9, 'C9', 'West', 800),
(10, 'C10', 'West', 1000);
select * from orders;

"1. Find the total order amount."
select sum(amount)from orders;

"2. Find the average order amount."
select avg(amount)from orders;

"3. Find the minimum and maximum order amount."
select min(amount),max(amount) from orders;

"4. Find the total number of orders."
select count(order_id) from orders;

"5. Find the total order amount per region."
select region, sum(order_id) from orders
group by region;

"6. Find the average order amount per region."
select region, avg(order_id) from orders
group by region;

"7. Find the number of orders per region."
select region, count(order_id) from orders
group by region;

"8. Find the minimum order amount per region."
select region, min(order_id) from orders
group by region;

"9. Find the maximum order amount per region."
select region, max(order_id) from orders
group by region;

"10. Assign ROW_NUMBER to orders based on amount (ascending)."
select amount, order_id,
row_number() over (order by amount asc)
from orders;

"11. Assign RANK to orders based on amount (descending)."
select amount, order_id,
rank() over (order by amount desc)
from orders;

"12. Assign DENSE_RANK to orders based on amount (descending)."
select amount, order_id,
dense_rank() over (order by amount desc)
from orders;

"13. Assign ROW_NUMBER per region ordered by amount (ascending)."
select amount, order_id,
row_number() over (partition by region order by amount asc)
from orders;

"14. Assign RANK per region ordered by amount (descending)."
select amount, order_id,
rank() over (partition by region order by amount desc)
from orders;

"15. Assign DENSE_RANK per region ordered by amount (descending)."
select amount, order_id,
dense_rank() over (partition by region order by amount desc)
from orders;
