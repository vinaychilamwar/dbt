{{
    config(
        materialized='table'
    )
}}
select * from dbt_vchilamwar.customers where number_of_orders>1