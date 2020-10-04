/* Weather Observation Station 2 */

SELECT CAST(SUM(LAT_N) AS NUMERIC(10,2)), CAST(SUM(LONG_W) AS NUMERIC(10,2))
FROM Station
