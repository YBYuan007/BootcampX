SELECT sum(assignment_submissions.duration) as total_duration 
FROM students 
INNER JOIN assignment_submissions 
ON students.id = assignment_submissions.student_id 
WHERE name = 'Ibrahim Schimmel'; 

