SELECT cohorts.name, sum(completed_at - started_at) as total_duration
  FROM assistance_requests
  JOIN students on student_id = students.id
  JOIN cohorts on cohort_id = cohorts.id
  GROUP BY cohorts.name
  ORDER BY total_duration;