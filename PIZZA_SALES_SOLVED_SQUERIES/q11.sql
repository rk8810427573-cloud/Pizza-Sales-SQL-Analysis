-- Determine the top 3 most ordered pizza types based on revenue.

SELECT 
    z.name, SUM(p.price * o.quantity) AS revenue
FROM
    pizzas AS p
        JOIN
    pizza_types AS z ON p.pizza_type_id = z.pizza_type_id
        JOIN
    orders_details AS o ON p.pizza_id = o.pizza_id
GROUP BY z.name
ORDER BY revenue DESC
LIMIT 3;
