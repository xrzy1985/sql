--  A comment is two dashes
-- # a hash tag apparently works in MySQL workbench 6.3
/*
    Or the conventional multiline comment
*/

-- Show what databases are available
SHOW databases;

-- To create a database within the schema
CREATE DATABASE tutorial;

-- Use the database you just created
USE tutorial;

-- This will tell you what DB you're currently using
SELECT DATABASE();

-- TO drop the DB
DROP DATABASE IF EXISTS tutorial;
