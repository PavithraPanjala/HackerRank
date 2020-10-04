/* Weather Observation Station 8 */

SELECT DISTINCT(City)
FROM Station
WHERE City LIKE '[AEIOU]%' AND City LIKE '%[AEIOU]'