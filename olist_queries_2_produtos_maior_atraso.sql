-- query produtos maior atraso

select top 10 orders.order_id,orders.order_purchase_timestamp,
    items.shipping_limit_date as limit_date,
    orders.order_delivered_customer_date as delivered_customer,
    datediff(day,items.shipping_limit_date,orders.order_delivered_customer_date) as days_delayed,
    datediff(day,orders.order_purchase_timestamp,orders.order_approved_at) as days_to_approve,
    datediff(day,orders.order_approved_at,orders.order_delivered_carrier_date) as days_to_carrier,
    datediff(day,orders.order_delivered_carrier_date,orders.order_delivered_customer_date) as days_to_ship
from [dbo].[olist_order_items_dataset] as items
inner join [dbo].[olist_orders_dataset] as orders
on items.order_id = orders.order_id where items.shipping_limit_date < orders.order_delivered_customer_date
order by days_delayed desc;