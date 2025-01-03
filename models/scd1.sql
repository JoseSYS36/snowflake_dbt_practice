{{ 
    config(
        materialized='table'
    ) 
}}

select 
    *
from 
    TEST1.SNAPSHOTS.USERS_SNAPSHOT
where 
    DBT_VALID_TO is null
