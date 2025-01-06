SELECT  
    Customer_key,
    CustomerID,
    Age,
    Gender,
    AnnualIncome,
    '{{ var("DBT_USER") }}' as Created_by,
    DBT_VALID_FROM as Created_Date,
    CASE
    WHEN DBT_VALID_TO is NULL THEN 'Not yet Updated'
    ELSE '{{ var("DBT_USER") }}'
    END AS Updated_by,    
    DBT_VALID_TO as Updated_Date,
    CASE
    WHEN DBT_VALID_TO is NULL THEN 'T'
    ELSE 'F'
    END AS FLAG
FROM
    {{ref('Dim_Customer_snapshot')}}