with be_mapping  as (
    select        BUSINESS_ENTITY_DESCR as BE, BUSINESS_GROUP as BG
    from `sajdbt`.EDW_FINANCE_ETL_DB_DV3.wi.tgt_be_bg_mapping
)
,
qbo_ctrl as (
    select crtnt_yr_qtr_id, prev_yr_qtr_id, metrics_process_qtr_id from 
    'sajdbt'.EDW_FINANCE_ETL_DB_DV3.wi.QBO_METRICS_CTRL
)
final as 
(select metric_process_qtr_id, BE, BG from 
be_mapping b, qbo_Ctrl c  )
select f.* from final f order by BE