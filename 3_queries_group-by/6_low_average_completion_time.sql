SELECT name AS student, avg(stud_duration) AS average_assignment_duration, avg(est) AS average_estimated_duration FROM 
(SELECT student_id, assignment_id, assignment_submissions.duration AS stud_duration, assignments.duration AS est 
FROM assignment_submissions JOIN assignments ON assignment_id = assignments.id) AS with_avg_duration 
JOIN students ON id = student_id
WHERE end_date IS NULL
GROUP BY student
HAVING avg(stud_duration) < avg(est)
ORDER BY average_assignment_duration;
