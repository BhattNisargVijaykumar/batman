SELECT 
    employee_id, b.team_size
FROM
    employee e JOIN (SELECT team_id, COUNT(team_id) AS team_size
FROM
	employee GROUP BY team_id) b 
    ON e.team_id = b.team_id