
SELECT pickup_datetime, AVG(distance)
FROM (
SELECT pickup_datetime, distance
FROM taxi
WHERE pickup_datetime LIKE '2009%'

UNION ALL

SELECT pickup_datetime, distance
FROM uber
WHERE pickup_datetime LIKE '2009%'
)
GROUP BY pickup_datetime
ORDER BY COUNT(pickup_datetime) DESC
LIMIT 10
