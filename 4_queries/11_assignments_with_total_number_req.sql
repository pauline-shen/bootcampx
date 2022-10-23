SELECT req_data.id AS id, req_data.name AS name, day, chapter, count(req) AS total_requests FROM
(SELECT assignments.id, assignments.name, day, chapter, assistance_requests.id AS req 
FROM assistance_requests JOIN assignments ON assignments.id = assignment_id) AS req_data
GROUP BY id, name, day, chapter
ORDER BY total_requests DESC;
