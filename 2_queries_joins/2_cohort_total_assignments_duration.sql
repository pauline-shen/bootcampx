SELECT sum(assignment_submissions.duration) FROM assignment_submissions LEFT JOIN
(SELECT students.id AS sid, cohorts.id, cohorts.name AS cname FROM students JOIN cohorts ON cohort_id = cohorts.id) AS scohort
 ON assignment_submissions.student_id = sid WHERE cname = 'FEB12';
