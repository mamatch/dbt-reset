with raw_customers as (
    select
    id as customer_id,
    name as customer_name,
    age as customer_age
    from {{ source('dbt_raw', 'customers')}}
)

select * from raw_customers