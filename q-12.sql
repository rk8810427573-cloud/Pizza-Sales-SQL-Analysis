-- Analyze the cumulative revenue generated over time.


select order_date , sum(revenue) over (order by order_date) as cum_revenue
from
(SELECT 
     o.order_date, round(SUM(p.price * d.quantity)) as revenue
FROM pizzas as p
    JOIN
    orders_details AS d ON p.pizza_id = d.pizza_id
        JOIN
    orders AS o ON d.order_id = o.order_id
GROUP By o.order_date) as r

 ;
