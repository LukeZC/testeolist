--query reviews produtos atrasados

select count(reviews.review_id) as number_reviews,
    avg(datediff(day,items.shipping_limit_date,orders.order_delivered_customer_date)) as avg_days_delayed,
    reviews.review_score from [dbo].[olist_order_items_dataset] as items
inner join [dbo].[olist_orders_dataset] as orders on items.order_id = orders.order_id
inner join [dbo].[olist_order_reviews_dataset] as reviews on reviews.order_id=orders.order_id
where items.shipping_limit_date < orders.order_delivered_customer_date
group by reviews.review_score
order by review_score desc;