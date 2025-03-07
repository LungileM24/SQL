select * from menu_items;
select * from order_details;

select *
from order_details od left join menu_items mi 
       on od.item_id = mi.menu_item_id;
       
select item_name, count(order_details_id) as num_purchases
from order_details od left join menu_items mi 
       on od.item_id = mi.menu_item_id
group by item_name
order by num_purchases;

select order_id, sum(price) as total_spend
from order_details od left join menu_items mi 
       on od.item_id = mi.menu_item_id
	group by order_id
    order by total_spend Desc
    limit 5;
    
    
select category, count(item_id) as num_items
from order_details od left join menu_items mi 
       on od.item_id = mi.menu_item_id
where order_id = 440
group by category;

