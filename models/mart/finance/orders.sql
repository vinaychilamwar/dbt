with 
    orders as (
        select * from {{ ref('stg_orders') }}
    ),

    payments as (
        select * from {{ ref('stg_payments') }}
    )

    select orders.order_id,
           orders.customer_id,
           orders.order_date,
           sum(case when payments.status='success' then payments.amount else 0 end) as amount
           
        from orders join payments using (order_id)
        group by 1,2,3
