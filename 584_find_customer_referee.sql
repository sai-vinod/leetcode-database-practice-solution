-- Oracle: Objective is to find customers who were not referred by customer with id=2
-- Problem: https://leetcode.com/problems/find-customer-referee/description/
SELECT name
FROM Customer
WHERE referee_id != 2 OR referee_id IS NULL