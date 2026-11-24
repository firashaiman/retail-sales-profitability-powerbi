# Retail Sales & Profitability Dashboard

A two-page Power BI report built with MySQL, Power BI Desktop, and DAX using Tableau Sample Superstore order lines from 2018–2021.

[View the interactive Power BI report](https://app.powerbi.com/view?r=eyJrIjoiM2RjMGFjNTUtOTFjNS00M2EyLWFjOWItMTA5Mjk1OGJmOTE0IiwidCI6ImNkY2JiMGUyLTlmZWEtNGY1NC04NjcwLTY3MjcwNzc5N2FkYSIsImMiOjEwfQ%3D%3D)

## Sales performance

Track total sales, total profit, and margin. Compare monthly sales and category performance using the Region and Year slicers.

![Sales Performance Dashboard](screenshots/sales-overview.png)

## Profitability analysis

Compare profit by subcategory and review sales, profit, and margin by year or discount rate. Red highlights negative results.

![Profitability Analysis](screenshots/profitability-analysis.png)

## SQL findings

From 2020 to 2021, South region sales rose by $29,295.63 while profit fell by $8,853.90. Within South Technology, Machines recorded the largest profit decline, down $8,215.72. South Machines orders at a 50% discount lost $4,147.60 in 2021.

## Project files

- [Power BI source report](powerbi/Sales%20Performance%20Dashboard.pbix)
- [Prepared order-line CSV](data/orders_for_power_bi.csv)
- [MySQL export view and analysis queries](sql/)
- [DAX measures](dax/report-measures.md)

Open the PBIX in Power BI Desktop. If you refresh and Power BI asks for the original CSV path, update the data source to point to the included CSV.

To rerun the SQL in MySQL, first import Tableau Sample Superstore into `superstore_sales.orders_staging` with the original column names and dates in day/month/year format. Script 01 creates the export view and checks the row count. Scripts 02–07 reproduce the analysis shown in the original SQL screenshots.
