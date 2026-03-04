-- Identify the most common pizza size ordered.
select * from orders;
select * from orders_details;
select * from pizzas;
select * from pizza_types;

select  p.size, sum(o.quantity) as qunatity_order  from orders_details as o
join pizzas as p 
on o.pizza_id =  p.pizza_id
group by size
order by sum(o.quantity) desc ;