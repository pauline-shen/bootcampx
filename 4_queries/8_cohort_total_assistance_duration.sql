SELECT name, sum(completed_at - started_at) AS total_duration 
FROM assistance_requests JOIN
(SELECT students.id AS stud_id, cohorts.name AS name 
FROM students JOIN cohorts ON cohort_id = cohorts.id) AS stud_cohort ON student_id = stud_id
GROUP BY name
ORDER BY total_duration;
