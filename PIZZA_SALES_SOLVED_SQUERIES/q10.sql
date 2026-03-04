-- Group the orders by date and calculate the average number of pizzas ordered per day.

SELECT 
    AVG(quantity)
FROM
    (SELECT 
        DATE(o.order_date), SUM(d.quantity) AS quantity
    FROM
        orders AS o
    JOIN orders_details AS d ON o.order_id = d.order_id
    GROUP BY DATE(o.order_date)) AS t;


SELECT 
    AVG(daily_total) AS avg_pizzas_per_day
FROM
    (SELECT 
        o.order_date, SUM(od.quantity) AS daily_total
    FROM
        orders o
    JOIN orders_details od ON o.order_id = od.order_id
    GROUP BY o.order_date) AS t;