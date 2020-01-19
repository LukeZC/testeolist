--percentual reviews sem comentarios

select
    (cast ((select count (*) from [dbo].[olist_order_reviews_dataset] where review_comment_message is null)as float) / count(*)*100)
from [dbo].[olist_order_reviews_dataset];