Get the total number of assistance_requests for a teacher.

Select the teacher's name and the total assistance requests.
Since this query needs to work with any specific teacher name, use 'Waylon Boehm' for the teacher's name here.

SELECT teachers.name, count(assistance_requests) as total_assistances
FROM assistance_requests
WHERE name = 'Waylon Boehm'
JOIN teachers ON teachers.id = teacher_id
GROUP BY teachers.name;