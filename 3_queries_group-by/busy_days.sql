SELECT count(id) as total_assignments, day 
FROM assignments
GROUP BY day
HAVING count(id) >=10
ORDER BY day; 
