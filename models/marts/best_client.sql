with best_client as (
    select 
        customer_id,
        customer_name,
        sum(order_amount) as total_expense
    from {{ ref('orders_customers') }}
    group by customer_id, customer_name
    order by total_expense desc
)

select * from best_client