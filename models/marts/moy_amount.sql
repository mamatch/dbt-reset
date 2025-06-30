with moy_amount as (
    select 
        sum(order_amount)/ count(distinct customer_id) as avg_amount_per_customer 
    from {{ ref('orders_customers') }}
)

select * from moy_amount