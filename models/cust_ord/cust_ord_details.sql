{{ config(materialized='table') }}

select {{ ref('bv_customer') }}.id, user_id, full_name, order_date, status_code from 
{{ ref('bv_customer') }}
inner join
{{ ref('bv_orders') }}
on {{ ref('bv_customer') }}.id = {{ ref('bv_orders') }}.id