-- what is the Average delivery time by state?

select c.customer_state, 
round(avg(datediff(o.order_delivered_customer_date,date(o.order_purchase_timestamp))),2) as avg_delivery_time
from customers as c
join orders as o
on c.customer_id = o.customer_id
where o.order_delivered_customer_date is not null
group by c.customer_state
order by avg_delivery_time;







