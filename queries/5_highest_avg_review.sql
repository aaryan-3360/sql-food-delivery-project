-- which sellers have the highest average review score?

select oi.seller_id, count(oi.order_id) as total_order,
 avg(ore.review_score) as avg_review
from orders_items as oi
join orders_reviews as ore
on oi.order_id = ore.order_id
group by oi.seller_id
HAVING COUNT(DISTINCT oi.order_id) 
ORDER BY avg_review DESC
LIMIT 1;

