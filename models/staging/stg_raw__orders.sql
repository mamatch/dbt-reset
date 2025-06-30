with raw_orders as (
    select
        id as order_id,
        customer_id as order_customer_id,
        amount as order_amount 
    from {{ source('dbt_raw', 'orders') }}
)

select * from raw_orders