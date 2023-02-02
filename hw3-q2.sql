SELECT DISTINCT f.origin_city as city
FROM [dbo].[FLIGHTS] as f 
WHERE canceled = 0
GROUP BY f.origin_city
HAVING MAX(f.actual_time) < 180
ORDER By f.origin_city;

-- 109
-- Aberdeen SD
-- Abilene TX
-- Alpena MI
-- Ashland WV
-- Augusta GA
-- Barrow AK
-- Beaumont/Port Arthur TX
-- Bemidji MN
-- Bethel AK
-- Binghamton NY
-- Brainerd MN
-- Bristol/Johnson City/Kingsport TN
-- Butte MT
-- Carlsbad CA
-- Casper WY
-- Cedar City UT
-- Chico CA
-- College Station/Bryan TX
-- Columbia MO
-- Columbus GA