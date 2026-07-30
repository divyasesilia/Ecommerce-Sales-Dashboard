-- ==========================================================
-- Ecommerce Sales Dashboard
-- File: 08_cte_queries.sql
-- Author: Divya Sesilia
-- Description: Common Table Expressions (CTEs)
-- ==========================================================

-- ==========================================================
-- Business Question:
-- Display the top 5 customers by sales using a CTE.
-- ==========================================================

WITH CustomerSales AS (
    SELECT
        "Customer Name",
        SUM(Sales) AS Total_Sales
    FROM superstore
    GROUP BY "Customer Name"
)

SELECT *
FROM CustomerSales
ORDER BY Total_Sales DESC
LIMIT 5;

-- ==========================================================
-- Business Question:
-- Identify categories with above-average sales.
-- ==========================================================

WITH CategorySales AS (
    SELECT
        Category,
        AVG(Sales) AS Avg_Sales
    FROM superstore
    GROUP BY Category
)

SELECT *
FROM CategorySales
WHERE Avg_Sales >
(
    SELECT AVG(Sales)
    FROM superstore
);

-- ==========================================================
-- Business Question:
-- Display the top 10 most profitable products using a CTE.
-- ==========================================================

WITH ProductProfit AS (
    SELECT
        "Product Name",
        SUM(Profit) AS Total_Profit
    FROM superstore
    GROUP BY "Product Name"
)

SELECT *
FROM ProductProfit
ORDER BY Total_Profit DESC
LIMIT 10;

-- ==========================================================
-- Business Question:
-- Generate a regional sales summary using a CTE.
-- ==========================================================

WITH RegionSales AS (
    SELECT
        Region,
        SUM(Sales) AS Total_Sales
    FROM superstore
    GROUP BY Region
)

SELECT *
FROM RegionSales
ORDER BY Total_Sales DESC;