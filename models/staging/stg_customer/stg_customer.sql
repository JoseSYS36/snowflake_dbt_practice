SELECT
    CustomerID,
    Age,
    Gender,
    AnnualIncome
FROM
    {{ source('retail_src', 'retail_data') }}
GROUP BY
    CustomerID,
    Age,
    Gender,
    AnnualIncome
