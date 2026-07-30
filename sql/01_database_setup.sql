-- ==========================================================
-- Ecommerce Sales Dashboard
-- File: 01_database_setup.sql
-- Author: Divya Sesilia
-- Description: Database setup and dataset information
-- ==========================================================

-- Database
-- SQLite

-- Dataset
-- Superstore Sales Dataset (Cleaned)

-- Table Name
-- superstore

-- Note:
-- The cleaned dataset was prepared using Python
-- and imported into SQLite for SQL analysis.

-- Example import (SQLite CLI)

-- .mode csv
-- .import superstore_cleaned.csv superstore

-- Verify imported data

SELECT *
FROM superstore
LIMIT 10;
