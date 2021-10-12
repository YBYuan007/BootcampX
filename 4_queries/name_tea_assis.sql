SELECT DISTINCT(teachers.name )AS teacher, 
  cohorts.name AS cohort
FROM teachers 
INNER JOIN assistance_requests
ON teachers.id = assistance_requests.teacher_id 
INNER JOIN students
ON students.id = assistance_requests.student_id 
INNER JOIN cohorts
ON cohorts.id = students.cohort_id
WHERE cohorts.name = 'JUL02' 
ORDER BY teachers.name 

