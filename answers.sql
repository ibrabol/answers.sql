# ASSIGNMENT: DATABASE INDEXING AND OPTIMIZATION
# answers.sql

USE sales;

-- QUESTION 1: Create and drop the IdxPhone index

CREATE INDEX IdxPhone ON customers(phone);

DROP INDEX IdxPhone ON customers;

-- Verify the remaining indexes
SHOW INDEX FROM customers;


-- QUESTION 2: Create user bob restricted to localhost

CREATE USER IF NOT EXISTS 'bob'@'localhost'
IDENTIFIED BY '-$5CU3r3!-';


-- QUESTION 3: Grant INSERT privilege to bob on the sales database

GRANT INSERT ON sales.*
TO 'bob'@'localhost';


-- QUESTION 4: Change bob's password

ALTER USER 'bob'@'localhost'
IDENTIFIED BY '_P$55!23_';


-- Verify the granted privileges
SHOW GRANTS FOR 'bob'@'localhost';