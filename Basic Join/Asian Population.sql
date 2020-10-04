/* Asian Population */

SELECT SUM(c.population)
FROM City c
JOIN Country ct ON c.CountryCode = ct.Code 
WHERE ct.Continent = 'Asia'