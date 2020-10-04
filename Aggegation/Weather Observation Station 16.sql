/* Weather Observation Station 16 */

SELECT CAST(MIN(LAT_N) AS NUMERIC(10, 4))
FROM Station
WHERE LAT_N > 38.7780