/* Weather Observation Station 17 */

SELECT CAST(LONG_W AS NUMERIC(20, 4))
FROM 
    (SELECT TOP 1 LAT_N, LONG_W
    FROM Station
    WHERE LAT_N > 38.7780
    ORDER BY LAT_N) AS A