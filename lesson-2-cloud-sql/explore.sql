-- Which state have the most number of order. Top 10.

SELECT customer_state, count(distinct order_id)
from customers
left join orders
on customers.customer_id = orders.order_customer_id
group by customer_state 
order by count(distinct order_id) desc
limit 10 ;

-- Distribution of orders by status
select order_status, count(*)
from orders
group by order_status
order by count(*) desc;

-- For the suspected fraud, do we have products that are more frequent. What are top 10
-- We need their names and categories
with base as (    
    Select * 
    from orders 
    where order_status = 'SUSPECTED_FRAUD')                                                                                                                 
, base2 as 
(
    Select order_item_product_id, sum(order_item_quantity) as net 
    from order_items it 
    inner join base 
    on it.order_item_order_id=base.order_id 
    group by order_item_product_id
)
Select category_name, product_name, net
from base2 
left join products
on base2.order_item_product_id = products.product_id
left join categories
on products.product_category_id=categories.category_id
order by net desc
limit 10;
