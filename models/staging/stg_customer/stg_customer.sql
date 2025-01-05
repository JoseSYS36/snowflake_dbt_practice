SELECT
    CustomerID,
    Age,
    Gender,
    AnnualIncome
FROM
    {{ source('retail', 'retail_data') }}
GROUP BY
    CustomerID,
    Age,
    Gender,
    AnnualIncome
