/* Weather Observation Station 11 */

SELECT DISTINCT(City) 
FROM Station 
WHERE City NOT LIKE '[AEIOU]%' OR City NOT LIKE '%[AEIOU]'