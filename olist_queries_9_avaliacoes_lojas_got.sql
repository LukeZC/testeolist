--query avaliacoes lojas got

Select 'Stark', avg(cast(review_score as Float)) as avg_score FROM dbo.olist_order_reviews_dataset
    where review_comment_message like '%stark%'
union
Select 'Lannister', avg(cast(review_score as Float)) as avg_score FROM dbo.olist_order_reviews_dataset
    where review_comment_message like '%lannister%'
union
Select 'Baratheon', avg(cast(review_score as Float)) as avg_score FROM dbo.olist_order_reviews_dataset
    where review_comment_message like '%baratheon%'
union
Select 'Targaryen', avg(cast(review_score as Float)) as avg_score FROM dbo.olist_order_reviews_dataset
    where review_comment_message like '%targaryen%'
order by avg_score desc;