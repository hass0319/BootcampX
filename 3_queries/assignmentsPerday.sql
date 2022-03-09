-- Get the total number of assignments for each day of bootcamp.

-- SELECT count(assignments.id), assignments.day as total_assignments
-- FROM assignments;

SELECT day, count(*) as total_assignments
FROM assignments
GROUP BY day
ORDER BY day;