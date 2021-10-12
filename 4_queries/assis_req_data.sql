SELECT teachers.name AS teacher , students.name AS student, assignments.name AS assignment, 
(completed_at - started_at) AS  duration
FROM  assistance_requests
INNER JOIN teachers
ON teachers.id = assistance_requests.teacher_id 
INNER JOIN students
ON students.id = assistance_requests.student_id 
INNER JOIN assignments
ON assignments.id = assistance_requests.assignment_id
ORDER BY duration; 