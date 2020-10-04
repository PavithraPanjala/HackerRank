/* Contest Leaderboard */

SELECT s.hacker_id, h.name, SUM(s.score) [total score]
FROM Hackers h
JOIN (
    SELECT hacker_id, challenge_id, MAX(Score) score
    FROM Submissions
    GROUP BY hacker_id, challenge_id) AS s ON s.hacker_id = h.hacker_id
GROUP BY s.hacker_id, h.name
HAVING SUM(s.score) > 0
ORDER BY [total score] DESC, S.hacker_id