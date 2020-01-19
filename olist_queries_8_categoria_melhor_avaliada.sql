--query categoria melhor avaliada

select top 3 products.product_category_name, avg(cast(order_reviews.review_score as Float)) as avg_score, count (order_reviews.review_score) as count_reviews
from [dbo].[olist_order_reviews_dataset] as order_reviews
inner join [dbo].[olist_order_items_dataset] as order_items on order_reviews.order_id = order_items.order_id
inner join [dbo].[olist_products_dataset] as products on products.product_id = order_items.product_id
group by products.product_category_name
order by avg_score desc, count_reviews desc;