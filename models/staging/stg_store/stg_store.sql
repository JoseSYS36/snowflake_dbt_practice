SELECT
    StoreID,
    StoreLocation
FROM
    {{ source('retail_src', 'retail_data') }}
GROUP BY
    StoreID,
    StoreLocation