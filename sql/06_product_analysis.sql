-- ==========================================================
-- Ecommerce Sales Dashboard
-- File: 06_product_analysis.sql
-- Author: Divya Sesilia
-- Description: Product and category business analysis
-- ==========================================================

-- ==========================================================
-- Business Question:
-- Which sub-category generates the highest sales?
-- ==========================================================

SELECT
    "Sub-Category",
    SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY "Sub-Category"
ORDER BY Total_Sales DESC;

-- ==========================================================
-- Business Question:
-- Which sub-category generates the highest profit?
-- ==========================================================

SELECT
    "Sub-Category",
    SUM(Profit) AS Total_Profit
FROM superstore
GROUP BY "Sub-Category"
ORDER BY Total_Profit DESC;

-- ==========================================================
-- Business Question:
-- Which products generate the highest sales?
-- ==========================================================

SELECT
    "Product Name",
    SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY "Product Name"
ORDER BY Total_Sales DESC
LIMIT 10;

-- ==========================================================
-- Business Question:
-- Which products generate the highest profit?
-- ==========================================================

SELECT
    "Product Name",
    SUM(Profit) AS Total_Profit
FROM superstore
GROUP BY "Product Name"
ORDER BY Total_Profit DESC
LIMIT 10;

-- ==========================================================
-- Business Question:
-- Which category has the highest average sales?
-- ==========================================================

SELECT
    Category,
    AVG(Sales) AS Average_Sales
FROM superstore
GROUP BY Category
ORDER BY Average_Sales DESC;

-- ==========================================================
-- Business Question:
-- Which category has the highest average profit?
-- ==========================================================

SELECT
    Category,
    AVG(Profit) AS Average_Profit
FROM superstore
GROUP BY Category
ORDER BY Average_Profit DESC;