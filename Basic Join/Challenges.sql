/* Challenges */

SELECT h.hacker_id, name, COUNT(challenge_id)
FROM Hackers h
JOIN Challenges c ON h.hacker_id = c.hacker_id
GROUP BY h.hacker_id, name
HAVING COUNT(challenge_id) NOT IN (
    SELECT scores
    FROM (
        SELECT hacker_id, COUNT(challenge_id) scores
        FROM Challenges
        GROUP BY hacker_id) AS A
    WHERE A.scores <> (
        SELECT MAX(count)
        FROM (
            SELECT COUNT(challenge_id) count
            FROM Challenges
            GROUP BY hacker_id) AS B) 
    GROUP BY scores
    HAVING COUNT(scores) > 1)   
ORDER BY COUNT(challenge_id) DESC, h.hacker_id