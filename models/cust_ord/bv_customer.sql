/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='view') }}

with customer_view as (

    select id, first_name, last_name , concat(first_name,' ** ',last_name) full_name from raw.sajdbt.customers
)

select *
from customer_view