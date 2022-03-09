-- total number of assignment_submissions for each student individually, and output the totals next to the student's name, and returns currently enrolled students.

SELECT students.name as student, count(assignment_submissions.*) as total_submissions
FROM assignment_submissions
JOIN students ON students.id = student_id
GROUP BY students.name;