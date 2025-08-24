select 
    id as payment_id,
    orderid as order_id,
    paymentmethod,
    status,
    amount/100 amount,
    created date
from {{ source('stripe', 'payment') }}