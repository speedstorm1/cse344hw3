SELECT DISTINCT f2.dest_city as city
FROM FLIGHTS as f1, FLIGHTS as f2
WHERE f1.origin_city = 'Seattle WA'
      and f1.dest_city = f2.origin_city
	  and f2.dest_city != 'Seattle WA'
      and f2.dest_city NOT IN (SELECT direct.dest_city
	  				  FROM Flights as direct
                      WHERE direct.origin_city = 'Seattle WA')
ORDER BY city;

-- 256

-- 10 seconds

-- Aberdeen SD
-- Abilene TX
-- Adak Island AK
-- Aguadilla PR
-- Akron OH
-- Albany GA
-- Albany NY
-- Alexandria LA
-- Allentown/Bethlehem/Easton PA
-- Alpena MI
-- Amarillo TX
-- Appleton WI
-- Arcata/Eureka CA
-- Asheville NC
-- Ashland WV
-- Aspen CO
-- Atlantic City NJ
-- Augusta GA
-- Bakersfield CA
-- Bangor ME