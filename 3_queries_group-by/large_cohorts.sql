SELECT cohorts.name AS cohort_name, count(students.id) AS student_count 
FROM students 
LEFT JOIN cohorts 
ON students.cohort_id = cohorts.id 
GROUP BY cohorts.name 
having count(students.id) >= 18 
ORDER BY student_count;  

