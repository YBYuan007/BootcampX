SELECT name, email, id, cohort_id 
FROM students 
WHERE phone IS NULL and email != '%gmail.com';