-- Calculate the average total duration of assistance requests for each cohort.

-- Use "total_Cohort_Assistance_Duration.sql" as a sub query to determine the duration per cohort.
-- Return a single row average_total_duration

SELECT avg(total_duration) as average_total_duration
FROM (
  SELECT cohorts.name as cohort, sum(completed_at - started_at) AS total_duration
  FROM assistance_requests
  JOIN students ON students.id = student_id
  JOIN cohorts ON cohorts.id = cohort_id
  GROUP BY cohort
  ORDER BY total_duration
) AS total_dureations;
