-- List the top 5 most ordered pizza types along with their quantities.

SELECT 
    z.name, SUM(o.quantity)
FROM
    pizza_types AS z
        JOIN
    pizzas AS p ON z.pizza_type_id = p.pizza_type_id
        JOIN
    orders_details AS o ON p.pizza_id = o.pizza_id
GROUP BY z.name
ORDER BY SUM(o.quantity) DESC
LIMIT 5;