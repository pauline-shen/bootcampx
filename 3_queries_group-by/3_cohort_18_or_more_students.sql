SELECT cohort_name, count(*) AS student_count FROM 
(SELECT students.cohort_id, cohorts.name AS cohort_name FROM cohorts LEFT JOIN students ON students.cohort_id = cohorts.id) AS stu_cohort
GROUP BY cohort_name 
HAVING count(stu_cohort.*) >= 18
ORDER BY student_count;
