{{ config(materialized='table') }}

with cus_ord_details as (
select {{ ref('bv_customer') }}.id, user_id, full_name, order_date, status_code from 
{{ ref('bv_customer') }}
inner join
{{ ref('bv_orders') }}
on {{ ref('bv_customer') }}.id = {{ ref('bv_orders') }}.id
)

select *
from cus_ord_details