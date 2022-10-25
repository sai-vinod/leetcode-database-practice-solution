-- Oracle: Objective is to return customer number who placed maximum number of orders
-- Problem: https://leetcode.com/problems/customer-placing-the-largest-number-of-orders/description/
SELECT customer_number
FROM (
    SELECT customer_number, COUNT(*) AS no_of_orders
    FROM Orders
    GROUP BY customer_number
    ORDER BY no_of_orders DESC
)
WHERE ROWNUM = 1