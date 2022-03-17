/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='view') }}

with orders_view as (

    select id, user_id, order_date, status, upper(substr(status,1,1)) as status_Code from raw.sajdbt.orders
)

select *
from orders_view limit 10