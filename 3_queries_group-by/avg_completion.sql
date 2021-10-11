SELECT students.name, 
  (sum(assignment_submissions.duration) / count(DISTINCT assignment_submissions.assignment_id)) AS  average_assignment_duration 
FROM students 
INNER JOIN assignment_submissions
ON students.id = assignment_submissions.student_id
WHERE end_date IS NULL 
GROUP by students.id
ORDER by average_assignment_duration DESC; 


