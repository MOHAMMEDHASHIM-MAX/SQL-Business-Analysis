-- SQL Business Analysis Project
-- Database: sales_analysis
-- Table: sales_data1

USE sales_analysis;
GO

----------------------------------------------------
-- 1. Top 5 Product Lines by Revenue
----------------------------------------------------
SELECT TOP 5
    PRODUCTLINE,
    SUM(SALES) AS total_revenue
FROM dbo.sales_data1
GROUP BY PRODUCTLINE
ORDER BY total_revenue DESC;


----------------------------------------------------
-- 2. Monthly Sales
----------------------------------------------------
SELECT
    YEAR_ID,
    MONTH_ID,
    SUM(SALES) AS monthly_sales
FROM dbo.sales_data1
GROUP BY YEAR_ID, MONTH_ID
ORDER BY YEAR_ID, MONTH_ID;


----------------------------------------------------
-- 3. Region-wise Estimated Profit
----------------------------------------------------
SELECT
    TERRITORY,
    SUM(SALES - (QUANTITYORDERED * PRICEEACH)) AS estimated_profit
FROM dbo.sales_data1
GROUP BY TERRITORY
ORDER BY estimated_profit DESC;


----------------------------------------------------
-- 4. Customer Lifetime Value
----------------------------------------------------
SELECT
    CUSTOMERNAME,
    SUM(SALES) AS lifetime_value
FROM dbo.sales_data1
GROUP BY CUSTOMERNAME
ORDER BY lifetime_value DESC;