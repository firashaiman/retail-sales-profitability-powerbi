CREATE VIEW superstore_sales.orders_for_power_bi AS
SELECT
    `Row ID` AS row_id,
    `Order ID` AS order_id,
    STR_TO_DATE(TRIM(`Order Date`), '%d/%m/%Y') AS order_date,
    `Region` AS region,
    `State` AS state,
    `Category` AS category,
    `Sub-Category` AS sub_category,
    `Product Name` AS product_name,
    `Sales` AS sales,
    `Profit` AS profit,
    `Quantity` AS quantity,
    `Discount` AS discount_rate
FROM superstore_sales.orders_staging;

SELECT COUNT(*) AS order_lines
FROM superstore_sales.orders_for_power_bi;
