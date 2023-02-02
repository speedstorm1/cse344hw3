SELECT DISTINCT f2.dest_city as city
FROM FLIGHTS as f2
WHERE ((f2.dest_city IN (SELECT DISTINCT ori.origin_city
							 FROM FLIGHTS as ori))
			OR (f2.dest_city IN (SELECT DISTINCT dest.dest_city
							 FROM FLIGHTS as dest)))
	  and f2.dest_city NOT IN (SELECT DISTINCT tsd.dest_city
	  						   FROM FLIGhts as tsd, Flights as tso
							   WHERE tso.origin_city = 'Seattle WA'
							         and tso.dest_city = tsd.origin_city)
      and f2.dest_city NOT IN (SELECT direct.dest_city
	  				           FROM Flights as direct
                               WHERE direct.origin_city = 'Seattle WA')
ORDER BY city;

-- 3

-- 44 seconds

-- Devils Lake ND
-- Hattiesburg/Laurel MS
-- St. Augustine FL