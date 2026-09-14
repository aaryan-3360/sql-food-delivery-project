-- what is the repeat purchase rate for customers within 6 months?

with first_purchase as
(
select c.customer_id,min(o.order_purchase_timestamp) as first_purchase
from customers as c
join orders as o
on c.customer_id = o.customer_id
group by c.customer_id
)
select distinct o.customer_id
from orders as o
join first_purchase as f
on o.customer_id = f.customer_id
where o.order_purchase_timestamp > f.first_purchase
and o.order_purchase_timestamp <= date_add(f.first_purchase, interval 6 month); -- dataset problem unique_customer_id is not available.
