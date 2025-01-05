SELECT
    StoreID,
    StoreLocation
FROM
    RETAIL.DBT_JHARRIES_SRC.RETAIL_DATA
GROUP BY
    StoreID,
    StoreLocation