with cleaned_orders as (
    select * from {{ ref('stg_raw__orders') }}
    where order_id is not null
    and order_customer_id is not null
    and order_amount > 0 
)

select * from cleaned_orders