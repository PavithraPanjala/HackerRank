/* Weather Observation Station 10 */

SELECT DISTINCT(City) 
FROM Station 
WHERE City NOT LIKE '%[AEIOU]'