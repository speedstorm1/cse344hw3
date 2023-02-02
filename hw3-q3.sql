WITH DURATIONS AS (
    SELECT f.origin_city, COUNT(f.origin_city) as nums
    FROM Flights as f 
    WHERE f.canceled = 0 and f.actual_time < 180
    GROUP BY f.origin_city),
    TOTALS AS (
    SELECT f1.origin_city, COUNT(f1.origin_city) as counts
    FROM Flights as f1
    WHERE f1.canceled = 0
    GROUP BY f1.origin_city)
SELECT t.origin_city, COALESCE(100.0*d.nums / t.counts, 0.0) as percentage
FROM totals t LEFT OUTER JOIN Durations d
ON t.origin_city = d.origin_city
ORDER BY percentage, origin_city;

-- 327

-- 14 seconds

-- Guam TT 0.000000000000
-- Pago Pago TT 0.000000000000
-- Aguadilla PR 28.897338403041
-- Anchorage AK 31.812080536912
-- San Juan PR 33.660531697341
-- Charlotte Amalie VI 39.558823529411
-- Ponce PR 40.983606557377
-- Fairbanks AK 50.116550116550
-- Kahului HI 53.514471352628
-- Honolulu HI 54.739028823682
-- San Francisco CA 55.828864537188
-- Los Angeles CA 56.080890822987
-- Seattle WA 57.609387792231
-- Long Beach CA 62.176439513998
-- New York NY 62.371834136728
-- Kona HI 63.160792951541
-- Las Vegas NV 64.920256372037
-- Christiansted VI 65.100671140939
-- Newark NJ 65.849971096980
-- Plattsburgh NY 66.666666666666