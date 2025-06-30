with cleaned_customers as (
    select * from {{ ref('stg_raw__customers') }}
    where customer_id is not null 
    and customer_name is not null
    and customer_age is not null
    and customer_age > 0 
)

select * from cleaned_customers