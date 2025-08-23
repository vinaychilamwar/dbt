{{
    config(
        materialized='table'
    )
}}
select * from {{ ref('customers') }} where number_of_orders>1