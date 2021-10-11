SELECT count(id) as total_assignments, day 
FROM assignments
GROUP BY day
ORDER BY day; 

