-- Join the necessary tables to find the total quantity of each pizza category ordered

SELECT 
    z.category, SUM(o.quantity)
FROM
    pizza_types AS z
        JOIN
    pizzas AS p ON z.pizza_type_id = p.pizza_type_id
        JOIN
    orders_details AS o ON p.pizza_id = o.pizza_id
GROUP BY z.category
ORDER BY SUM(o.quantity) DESC
;