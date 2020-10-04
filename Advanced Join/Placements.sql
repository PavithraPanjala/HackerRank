/* Placements */

WITH CTE AS (SELECT s.id, s.name, f.friend_id, p.salary
FROM Students s
JOIN Friends f ON s.id = f.id
JOIN Packages p ON s.id = p.id)

SELECT c.name
FROM CTE c
JOIN Packages sal ON c.friend_id = sal.id
WHERE sal.salary > c.salary
ORDER BY sal.salary
