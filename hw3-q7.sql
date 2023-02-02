SELECT DISTINCT c.name as carrier
FROM FLIGHTS as f1, CARRIERS as c
WHERE f1.carrier_id = c.cid and f1.origin_city = 'Seattle WA'
		and f1.dest_city = 'San Francisco CA'
ORDER BY c.name;

-- 4

-- 1 second

-- Alaska Airlines Inc.
-- SkyWest Airlines Inc.
-- United Air Lines Inc.
-- Virgin America