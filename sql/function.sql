-- ho many houses cost more then 10 milions in %
SELECT 
    100.0 * SUM(final_price > 10000000) / COUNT(*) AS pct_over_10m
FROM hemnet_data;