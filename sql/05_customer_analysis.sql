-- ==========================================================
-- Ecommerce Sales Dashboard
-- File: 05_customer_analysis.sql
-- Author: Divya Sesilia
-- Description: Customer-related business analysis
-- ==========================================================

-- ==========================================================
-- Business Question:
-- Who are the top 10 customers by sales?
-- ==========================================================

SELECT
    "Customer Name",
    SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY "Customer Name"
ORDER BY Total_Sales DESC
LIMIT 10;

-- ==========================================================
-- Business Question:
-- Who are the top 10 customers by profit?
-- ==========================================================

SELECT
    "Customer Name",
    SUM(Profit) AS Total_Profit
FROM superstore
GROUP BY "Customer Name"
ORDER BY Total_Profit DESC
LIMIT 10;

-- ==========================================================
-- Business Question:
-- Which customer segment generates the highest sales?
-- ==========================================================

SELECT
    Segment,
    SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY Segment
ORDER BY Total_Sales DESC;

-- ==========================================================
-- Business Question:
-- Which customer segment generates the highest profit?
-- ==========================================================

SELECT
    Segment,
    SUM(Profit) AS Total_Profit
FROM superstore
GROUP BY Segment
ORDER BY Total_Profit DESC;

-- ==========================================================
-- Business Question:
-- What is the average sales amount per customer?
-- ==========================================================

SELECT
    "Customer Name",
    AVG(Sales) AS Average_Sales
FROM superstore
GROUP BY "Customer Name"
ORDER BY Average_Sales DESC;

-- ==========================================================
-- Business Question:
-- Which customers placed the highest number of orders?
-- ==========================================================

SELECT
    "Customer Name",
    COUNT("Order ID") AS Total_Orders
FROM superstore
GROUP BY "Customer Name"
ORDER BY Total_Orders DESC;
