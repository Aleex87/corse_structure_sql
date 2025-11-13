SELECT
    *
FROM
    hemnet_data;

-- interrogate teh db for the data type 
DESCRIBE hemnet_data;

-- the 5 nor expencives final_price
SELECT
    *
FROM
    hemnet_data
ORDER BY
    final_price DESC
LIMIT
    5;

-- the 5 ceapest one on final_price
SELECT
    *
FROM
    hemnet_data
ORDER BY
    final_price
LIMIT
    5;

-- some information about the data with a aggregation function
SELECT
    MIN(final_price) AS min_price,
    AVG(final_price) AS avarage_price,
    MAX(final_price) AS max_price,
    MEDIAN (final_price) AS median_price
FROM
    hemnet_data
WHERE
    sale_date LIKE '%Såld%';


-- min max avg and median on the price_per_area
SELECT
    MIN(price_per_area) AS area_min_price,
    AVG(price_per_area) AS area_avarage_price,
    MAX(price_per_area) AS area_max_price,
    MEDIAN (price_per_area) AS area_median_price
FROM
    hemnet_data
    ;

-- print the unique comune we have in the data base
SELECT DISTINCT commune FROM hemnet_data;
 
-- how many unique comune we have in the data base
SELECT COUNT(DISTINCT commune) FROM hemnet_data;

