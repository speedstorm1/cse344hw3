WITH MaxDuration AS 
    (SELECT DISTINCT f1.origin_city, MAX(f1.actual_time) as ACTUALTIME
    FROM [dbo].[FLIGHTS] as f1
    GROUP BY f1.origin_city)
SELECT DISTINCT f2.origin_city, f2.dest_city, f2.actual_time as time
FROM Flights as f2, MaxDuration as MD
WHERE f2.origin_city = MD.origin_city AND 
      f2.actual_time = MD.ACTUALTIME
ORDER BY f2.origin_city, f2.dest_city;

-- 334

-- Aberdeen SD	Minneapolis MN	106
-- Abilene TX	Dallas/Fort Worth TX	111
-- Adak Island AK	Anchorage AK	471
-- Aguadilla PR	New York NY	368
-- Akron OH	Atlanta GA	408
-- Albany GA	Atlanta GA	243
-- Albany NY	Atlanta GA	390
-- Albuquerque NM	Houston TX	492
-- Alexandria LA	Atlanta GA	391
-- Allentown/Bethlehem/Easton PA	Atlanta GA	456
-- Alpena MI	Detroit MI	80
-- Amarillo TX	Houston TX	390
-- Anchorage AK	Barrow AK	490
-- Appleton WI	Atlanta GA	405
-- Arcata/Eureka CA	San Francisco CA	476
-- Asheville NC	Chicago IL	279
-- Ashland WV	Cincinnati OH	84
-- Aspen CO	Los Angeles CA	304
-- Atlanta GA	Honolulu HI	649
-- Atlantic City NJ	Fort Lauderdale FL	212