SELECT cohorts.name AS cohort , count(*) AS total_submissions 
FROM students 
LEFT JOIN cohorts 
ON students.cohort_id = cohorts.id 
LEFT JOIN assignment_submissions
ON assignment_submissions.student_id = students.id 
GROUP by cohorts.name 
ORDER by  total_submissions DESC; 

