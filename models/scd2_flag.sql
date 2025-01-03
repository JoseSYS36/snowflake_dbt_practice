{{ 
    config(
        materialized='table'
    ) 
}}

select 
    *,
    case
        when DBT_VALID_TO is null then 'T'
        else 'F'
        END as Flag
from 
    TEST1.SNAPSHOTS.USERS_SNAPSHOT

