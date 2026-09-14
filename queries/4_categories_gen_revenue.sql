-- which product categories generate the most revenue?

select p.product_category_name,round(sum(o.price),2) as revenue
from products as p
join orders_items as o
on p.product_id=o.product_id 
group by p.product_category_name
order by revenue desc;
