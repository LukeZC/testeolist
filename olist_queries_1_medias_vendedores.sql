--query vendedor maior media

select top 3 order_items.seller_id, count (order_reviews.review_score) as count_reviews, avg(cast(order_reviews.review_score as Float)) as avg_score
from [dbo].[olist_order_reviews_dataset] as order_reviews
inner join [dbo].[olist_order_items_dataset] as order_items on order_reviews.order_id = order_items.order_id
group by order_items.seller_id
order by avg_score desc, count_reviews desc;

--query vendedor menor media

select top 3 order_items.seller_id, count (order_reviews.review_score) as count_reviews, avg(cast(order_reviews.review_score as Float)) as avg_score
from [dbo].[olist_order_reviews_dataset] as order_reviews
inner join [dbo].[olist_order_items_dataset] as order_items on order_reviews.order_id = order_items.order_id
group by order_items.seller_id
order by avg_score asc, count_reviews desc;