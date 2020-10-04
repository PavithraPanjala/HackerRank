/* Occupations */

SELECT Doctor, Professor, Singer, Actor
FROM (
    SELECT ROW_NUMBER() OVER(PARTITION BY Occupation ORDER BY Name) rn, 
      Name, Occupation       
    FROM OCCUPATIONS) AS Source
PIVOT(MAX(Name) 
      FOR Occupation 
      IN (Doctor, Professor, Singer, Actor)
     ) AS pivotTable