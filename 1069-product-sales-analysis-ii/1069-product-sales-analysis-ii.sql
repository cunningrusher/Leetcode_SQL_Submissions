Select s.product_id, sum(s.quantity) as total_quantity
from sales s
left join product p on s.product_id=p.product_id 
group by s.product_id

