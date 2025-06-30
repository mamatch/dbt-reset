with orders_customers as (
    select 
        c.*,
        o.* except(order_customer_id)
    from {{ ref('int_customers_filter') }} c
    join {{ ref('int_orders_filter') }} o
    on c.customer_id = o.order_customer_id
)

select * from orders_customers