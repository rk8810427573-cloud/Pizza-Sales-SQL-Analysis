-- Determine the top 3 most ordered pizza types based on revenue for each pizza category.
select category , name,revenue,rn
from
-- Determine the top 3 most ordered pizza types based on revenue for each pizza category.

(select name , category,revenue, rank() over (partition by  category order by revenue) as rn
from
(select z.name , z.category , round(sum(p.price * d.quantity)) as revenue
from pizza_types as z join pizzas as p 
on z.pizza_type_id = p.pizza_type_id
join orders_details as d on
d.pizza_id = p.pizza_id
group by z.name, z.category) as r) as b
where rn<=3;