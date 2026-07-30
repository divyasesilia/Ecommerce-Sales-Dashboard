-- ==========================================================
-- Ecommerce Sales Dashboard
-- File: 07_window_functions.sql
-- Author: Divya Sesilia
-- Description: Window function analysis
-- ==========================================================

-- ==========================================================
-- Business Question:
-- Rank customers based on total sales.
-- ==========================================================

SELECT
    "Customer Name",
    SUM(Sales) AS Total_Sales,
    RANK() OVER (ORDER BY SUM(Sales) DESC) AS Sales_Rank
FROM superstore
GROUP BY "Customer Name";

-- ==========================================================
-- Business Question:
-- Rank customers based on total profit using dense ranking.
-- ==========================================================

SELECT
    "Customer Name",
    SUM(Profit) AS Total_Profit,
    DENSE_RANK() OVER (ORDER BY SUM(Profit) DESC) AS Profit_Rank
FROM superstore
GROUP BY "Customer Name";

-- ==========================================================
-- Business Question:
-- Assign row numbers to products based on their sales.
-- ==========================================================

SELECT
    "Product Name",
    Sales,
    ROW_NUMBER() OVER (ORDER BY Sales DESC) AS Row_Num
FROM superstore;

-- ==========================================================
-- Business Question:
-- Calculate the running total of yearly sales.
-- ==========================================================

SELECT
    "Order Year",
    SUM(Sales) AS Yearly_Sales,
    SUM(SUM(Sales)) OVER (
        ORDER BY "Order Year"
    ) AS Running_Total_Sales
FROM superstore
GROUP BY "Order Year";

-- ==========================================================
-- Business Question:
-- Calculate the average sales within each category.
-- ==========================================================

SELECT
    Category,
    Sales,
    AVG(Sales) OVER (
        PARTITION BY Category
    ) AS Category_Average
FROM superstore;