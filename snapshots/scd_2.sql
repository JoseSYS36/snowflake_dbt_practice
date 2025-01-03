{% snapshot users_snapshot %}
{{
  config(
    target_schema='snapshots',
    unique_key='id',
    strategy='timestamp', 
    updated_at='updated_at',

  )
}}

select
    *
from TEST1.DBT_JHARRIES.scd_source

{% endsnapshot %}
