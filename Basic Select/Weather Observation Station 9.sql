/* Weather Observation Station 9 */

SELECT DISTINCT(City) 
FROM Station 
WHERE City NOT LIKE '[AEIOU]%'