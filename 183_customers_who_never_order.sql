-- Objective is to identify customers who never ordered
-- Problem: https://leetcode.com/problems/customers-who-never-order/description/
SELECT name as Customers
FROM Customers
WHERE id NOT IN (
    SELECT customerId
    FROM Orders
)