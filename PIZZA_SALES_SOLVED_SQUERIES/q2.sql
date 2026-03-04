select * from orders_details;
select * from pizzas;
-- Calculate the total revenue generated from pizza sales

SELECT 
    round(SUM(o.quantity * p.price)) AS total_revenue
FROM
    orders_details o
        JOIN
    pizzas p ON o.pizza_id = p.pizza_id;