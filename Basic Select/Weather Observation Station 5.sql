/* Weather Observation Station 5 */

SELECT TOP 1 City, LEN(City) len
FROM Station
ORDER BY len DESC, City
SELECT TOP 1 City, LEN(City) len
FROM Station
ORDER BY len, City