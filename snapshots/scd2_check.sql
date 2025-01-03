{% snapshot scd2_check %}
{{
  config(
    target_schema='snapshots',   
    unique_key='id',           
    strategy='check',          
    check_cols=['name', 'email'] 
  )
}}

select
    *
from TEST1.DBT_JHARRIES.scd_source

{% endsnapshot %}
