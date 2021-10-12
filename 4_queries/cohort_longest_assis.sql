SELECT cohorts.name AS name, avg(completed_at - started_at) as average_assistance_time 
FROM assistance_requests 
INNER JOIN students 
ON students.id = assistance_requests.student_id 
INNER JOIN cohorts 
ON cohorts.id = students.cohort_id 
GROUP BY cohorts.name
ORDER BY average_assistance_time DESC 
LIMIT 1; 
