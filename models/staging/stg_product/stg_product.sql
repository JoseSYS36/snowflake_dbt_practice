SELECT
    ProductCategory
FROM
    {{ source('retail_src', 'retail_data') }}
GROUP BY
    ProductCategory