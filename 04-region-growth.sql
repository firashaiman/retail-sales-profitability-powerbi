SELECT
    region,
    ROUND(SUM(CASE WHEN sales_year = 2021 THEN sales ELSE -sales END), 2) AS sales_change,
    ROUND(SUM(CASE WHEN sales_year = 2021 THEN profit ELSE -profit END), 2) AS profit_change
FROM (
    SELECT
        `Region` AS region,
        YEAR(STR_TO_DATE(TRIM(`Order Date`), '%d/%m/%Y')) AS sales_year,
        `Sales` AS sales,
        `Profit` AS profit
    FROM superstore_sales.orders_staging
) AS order_lines
WHERE sales_year IN (2020, 2021)
GROUP BY region
ORDER BY sales_change DESC;
