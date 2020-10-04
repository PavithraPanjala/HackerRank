/* Weather Observation Station 20 */

DECLARE @count INT = (SELECT COUNT(*) FROM STATION);

SELECT CAST(LAT_N AS NUMERIC(10,4))
FROM Station
ORDER BY LAT_N
OFFSET @count / 2 ROWS
FETCH NEXT 1 + (1 - @count % 2) ROWS ONLY;