{% snapshot Dim_Customer_snapshot%}

{{ config(
    target_schema='snapshot',  
    target_database='retail',  
    unique_key='CustomerID',
    strategy='check',
    check_cols=['Age', 'AnnualIncome']

) }}

SELECT
    Row_number() over(order by (SELECT NULL)) as Customer_key,
    *
FROM {{ ref('stg_customer') }}  

{% endsnapshot %}

