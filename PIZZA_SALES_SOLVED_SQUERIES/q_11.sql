-- Calculate the percentage contribution of each pizza type to total revenue.

SELECT 
    z.category,
    (SUM(p.price * o.quantity) / (SELECT 
            SUM(p.price * o.quantity)
        FROM
            pizzas AS p
                JOIN
            orders_details AS o ON p.pizza_id = o.pizza_id)) * 100 AS revenue
FROM
    pizzas AS p
        JOIN
    pizza_types AS z ON p.pizza_type_id = z.pizza_type_id
        JOIN
    orders_details AS o ON p.pizza_id = o.pizza_id
GROUP BY z.category
ORDER BY revenue DESC;





SELECT 
    SUM(p.price * o.quantity) AS revenue
FROM
    pizzas AS p
        JOIN
    orders_details AS o ON p.pizza_id = o.pizza_id;