--query categoria mais produtos

select top 3 products.product_category_name, translation.product_category_name_english, count(*) as total_products
from [dbo].[olist_products_dataset] as products
left join [dbo].[product_category_name_translation] as translation on products.product_category_name = translation.product_category_name
group by products.product_category_name, translation.product_category_name_english
order by total_products desc;