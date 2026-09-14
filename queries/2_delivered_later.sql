-- identify orders that were delivered later than the estimated delivery date?

select o.order_id,o.order_delivered_customer_date,o.order_estimated_delivery_date
from orders as o
where order_delivered_customer_date > order_estimated_delivery_date;