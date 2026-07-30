-- ==========================================================
-- Ecommerce Sales Dashboard
-- File: 03_aggregate_analysis.sql
-- Author: Divya Sesilia
-- Description: Aggregate analysis using SQL
-- ==========================================================

-- ==========================================================
-- Business Question:
-- How many orders are in the dataset?
-- ==========================================================

SELECT COUNT(*) AS Total_Orders
FROM superstore;

-- ==========================================================
-- Business Question:
-- What are the total sales?
-- ==========================================================

SELECT SUM(Sales) AS Total_Sales
FROM superstore;

-- ==========================================================
-- Business Question:
-- What is the total profit?
-- ==========================================================

SELECT SUM(Profit) AS Total_Profit
FROM superstore;

-- ==========================================================
-- Business Question:
-- What is the average sales amount?
-- ==========================================================

SELECT AVG(Sales) AS Average_Sales
FROM superstore;

-- ==========================================================
-- Business Question:
-- What is the average profit?
-- ==========================================================

SELECT AVG(Profit) AS Average_Profit
FROM superstore;

-- ==========================================================
-- Business Question:
-- Which category generates the highest sales?
-- ==========================================================

SELECT MAX(Sales) AS Highest_Sale
FROM superstore;

-- ==========================================================
-- Business Question:
-- Which category generates the lowest sales?
-- ==========================================================

SELECT MIN(Sales) AS Lowest_Sale
FROM superstore;

-- ==========================================================
-- Business Question:
-- Which category has the highest total sales?
-- ==========================================================

SELECT
    Category,
    SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY Category
ORDER BY Total_Sales DESC;

-- ==========================================================
-- Business Question:
-- Which category has the highest total profit?
-- ==========================================================

SELECT
    Category,
    SUM(Profit) AS Total_Profit
FROM superstore
GROUP BY Category
ORDER BY Total_Profit DESC;

-- ==========================================================
-- Business Question:
-- Which categories have sales greater than 500000?
-- ==========================================================

SELECT
    Category,
    SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY Category
HAVING SUM(Sales) > 500000;