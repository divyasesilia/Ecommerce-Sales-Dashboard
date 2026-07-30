-- ==========================================================
-- Ecommerce Sales Dashboard
-- File: 02_basic_queries.sql
-- Author: Divya Sesilia
-- Description: Basic SQL queries for exploring the dataset
-- ==========================================================

-- ==========================================================
-- Business Question:
-- Display all records from the Superstore dataset.
-- ==========================================================

SELECT *
FROM superstore;

-- ==========================================================
-- Business Question:
-- Display only selected columns for reporting.
-- ==========================================================

SELECT
    "Order ID",
    "Customer Name",
    Category,
    Sales,
    Profit
FROM superstore;

-- ==========================================================
-- Business Question:
-- Find orders where sales exceed 500.
-- ==========================================================

SELECT *
FROM superstore
WHERE Sales > 500;

-- ==========================================================
-- Business Question:
-- Display all Technology category orders.
-- ==========================================================

SELECT *
FROM superstore
WHERE Category = 'Technology';

-- ==========================================================
-- Business Question:
-- List records in descending order of sales.
-- ==========================================================

SELECT
    "Customer Name",
    Category,
    Sales
FROM superstore
ORDER BY Sales DESC;

-- ==========================================================
-- Business Question:
-- Show the top 10 highest sales transactions.
-- ==========================================================

SELECT
    "Customer Name",
    Sales
FROM superstore
ORDER BY Sales DESC
LIMIT 10;