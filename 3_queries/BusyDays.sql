-- Get the total number of assignments for each day of bootcamp.

-- SELECT count(assignments.id), assignments.day as total_assignments
-- FROM assignments;

-- return rows where total assignments is greater than or equal to 10

SELECT day, count(*) as total_assignments
FROM assignments
GROUP BY day
HAVING count(*) >= 10
ORDER BY day;