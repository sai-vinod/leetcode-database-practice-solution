-- MYSQL: Objective is to identify Employees who earn more than their respective manager
-- I choose INNER JOIN as LEFT JOIN will result in more which includes rows where managerId is NULL
SELECT Employee.name AS Employee
FROM Employee
INNER JOIN Employee AS Manager
ON Employee.managerID = Manager.ID
WHERE Employee.salary > Manager.salary