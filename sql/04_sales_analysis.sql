-- ==========================================================
-- Ecommerce Sales Dashboard
-- File: 04_sales_analysis.sql
-- Author: Divya Sesilia
-- Description: Sales-related business analysis
-- ==========================================================

-- ==========================================================
-- Business Question:
-- What is the total sales revenue?
-- ==========================================================

SELECT
    SUM(Sales) AS Total_Sales
FROM superstore;

-- ==========================================================
-- Business Question:
-- What is the total profit?
-- ==========================================================

SELECT
    SUM(Profit) AS Total_Profit
FROM superstore;

-- ==========================================================
-- Business Question:
-- Which category generates the highest sales?
-- ==========================================================

SELECT
    Category,
    SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY Category
ORDER BY Total_Sales DESC;

-- ==========================================================
-- Business Question:
-- Which region contributes the highest sales?
-- ==========================================================

SELECT
    Category,
    SUM(Profit) AS Total_Profit
FROM superstore
GROUP BY Category
ORDER BY Total_Profit DESC;

-- ==========================================================
-- Business Question:
-- Which region contributes the highest sales?
-- ==========================================================

SELECT
    Region,
    SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY Region
ORDER BY Total_Sales DESC;

-- ==========================================================
-- Business Question:
-- How do sales change month by month?
-- ==========================================================

SELECT
    "Order Month",
    SUM(Sales) AS Monthly_Sales
FROM superstore
GROUP BY "Order Month"
ORDER BY "Order Month";

-- ==========================================================
-- Business Question:
-- How do sales change year by year?
-- ==========================================================

SELECT
    "Order Year",
    SUM(Sales) AS Yearly_Sales
FROM superstore
GROUP BY "Order Year"
ORDER BY "Order Year";