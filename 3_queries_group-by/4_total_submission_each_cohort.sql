SELECT name AS cohort, count(*) AS submission_count FROM 
(SELECT students.id, cohort_id, assignment_submissions.id FROM 
assignment_submissions JOIN students ON students.id = student_id) AS stud_submission 
JOIN cohorts ON cohort_id = cohorts.id
GROUP BY cohort
ORDER BY submission_count DESC;
