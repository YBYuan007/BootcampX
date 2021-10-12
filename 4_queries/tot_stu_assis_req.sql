SELECT count(*) as total_assistances, students.name 
FROM assistance_requests
LEFT JOIN students
ON students.id = assistance_requests.student_id 
WHERE students.name = 'Elliot Dickinson' 
GROUP BY students.name; 