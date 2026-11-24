SELECT
    sub_category,
    ROUND(SUM(CASE WHEN sales_year = 2020 THEN profit ELSE 0 END), 2) AS profit_2020,
    ROUND(SUM(CASE WHEN sales_year = 2021 THEN profit ELSE 0 END), 2) AS profit_2021,
    ROUND(SUM(CASE WHEN sales_year = 2021 THEN profit ELSE -profit END), 2) AS profit_change
FROM (
    SELECT
        `Sub-Category` AS sub_category,
        YEAR(STR_TO_DATE(TRIM(`Order Date`), '%d/%m/%Y')) AS sales_year,
        `Profit` AS profit
    FROM superstore_sales.orders_staging
    WHERE `Region` = 'South'
        AND `Category` = 'Technology'
) AS south_technology_orders
WHERE sales_year IN (2020, 2021)
GROUP BY sub_category
ORDER BY profit_change ASC;
