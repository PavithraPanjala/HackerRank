/* Average Population of Each Continent */

SELECT ct.Continent, AVG(c.population)
FROM City c
JOIN Country ct ON c.CountryCode = ct.Code 
GROUP BY ct.Continent