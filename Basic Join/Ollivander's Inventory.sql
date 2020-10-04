/* Ollivander's Inventory */

SELECT w.id, age, w.coins_needed, power
FROM Wands w
JOIN Wands_Property wp ON w.code = wp.code
WHERE is_evil = 0 AND coins_needed = (
	SELECT MIN(coins_needed)
	FROM Wands w2
	WHERE w.code = w2.code AND w.power = w2.power)
ORDER BY Power DESC, Age DESC