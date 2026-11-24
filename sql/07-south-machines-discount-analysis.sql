SELECT
    sales_year,
    discount_rate * 100 AS discount_pct,
    COUNT(*) AS order_lines,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND(100 * SUM(profit) / NULLIF(SUM(sales), 0), 2) AS profit_margin_pct
FROM (
    SELECT
        YEAR(STR_TO_DATE(TRIM(`Order Date`), '%d/%m/%Y')) AS sales_year,
        `Discount` AS discount_rate,
        `Sales` AS sales,
        `Profit` AS profit
    FROM superstore_sales.orders_staging
    WHERE `Region` = 'South'
        AND `Sub-Category` = 'Machines'
) AS south_machine_orders
WHERE sales_year IN (2020, 2021)
GROUP BY sales_year, discount_rate
ORDER BY discount_rate, sales_year;
