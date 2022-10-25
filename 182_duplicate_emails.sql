-- MySQL: Objective is to identify email IDs which appeared more than once iin Person table
-- Problem: https://leetcode.com/problems/duplicate-emails/description/
SELECT Email_count.email
FROM (
    SELECT email, COUNT(*) AS appearance_count
    FROM Person
    GROUP BY email
) AS Email_count
WHERE Email_count.appearance_count > 1