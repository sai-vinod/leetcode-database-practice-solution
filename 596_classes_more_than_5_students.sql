-- https://leetcode.com/problems/classes-more-than-5-students/description/
SELECT class
FROM (
    SELECT class, COUNT(*) AS no_of_students
    FROM Courses
    GROUP BY class
)
WHERE no_of_students >= 5