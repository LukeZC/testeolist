--query maior numero de pedidos

select top 3 product_id, count (*) as n_orders, round(sum(price),2) as total_value from [dbo].[olist_order_items_dataset]
group by product_id order by n_orders desc;

--query maior valor total arrecadado

select top 3 product_id, count (*) as n_orders, round(sum(price),2) as total_value from [dbo].[olist_order_items_dataset]
group by product_id order by total_value desc;