SELECT (sum(completed_at - started_at)/count(distinct cohorts.name))  AS average_total_duration 
FROM assistance_requests 
INNER JOIN students 
ON students.id = assistance_requests.student_id 
INNER JOIN cohorts
ON cohorts.id = students.cohort_id;



