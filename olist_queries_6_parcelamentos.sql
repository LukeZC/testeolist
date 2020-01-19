--query parcelamentos

select count (*) as paid_in_installments, avg(payment_installments) as avg_installments
from [dbo].[olist_order_payments_dataset] where payment_installments >1
union
select count (*), avg(payment_installments)
from [dbo].[olist_order_payments_dataset] where payment_installments = 1;