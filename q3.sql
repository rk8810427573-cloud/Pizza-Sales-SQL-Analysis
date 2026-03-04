-- Identify the highest-priced pizza.
select * from pizzas;
select * from pizza_types;

select p.name , max(z.price) as max_price
from pizza_types as p 
join pizzas as z
on p.pizza_type_id = z.pizza_type_id
group by p.name 
order by max_price desc
limit 1;