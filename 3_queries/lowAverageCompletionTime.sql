SELECT students.name as student, avg(assignment_submissions.duration) AS average_assignment_duration, avg(assignments.duration) as average_estimated_duration
FROM students
JOIN assignment_submissions ON student_id = students.id
JOIN assignments ON  assignments.id = assignment_id
WHERE students.end_date IS null
GROUP by student
HAVING avg(assignment_submissions.duration) < avg(assignments.duration)
ORDER BY average_assignment_duration;