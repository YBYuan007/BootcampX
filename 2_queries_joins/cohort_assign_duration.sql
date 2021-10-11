SELECT sum(assignment_submissions.duration) as total_duration
FROM students 
LEFT JOIN cohorts
ON cohorts.id = students.cohort_id 
LEFT JOIN assignment_submissions 
ON students.id = assignment_submissions.student_id
WHERE cohorts.name = 'FEB12'; 


-- //Get the total amount of time that all students from
--  a specific cohort have spent on all assignments. 
--  // cohort but use FEB12

