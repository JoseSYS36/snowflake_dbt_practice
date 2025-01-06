SELECT 
    PaymentMethod
FROM
    {{ source('retail_src', 'retail_data') }}
GROUP BY
    PaymentMethod    