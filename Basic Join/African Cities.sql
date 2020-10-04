/* African Cities */

SELECT c.name
FROM City c
JOIN Country ct ON c.CountryCode = ct.Code 
WHERE ct.Continent = 'Africa'