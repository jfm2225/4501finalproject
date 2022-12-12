
SELECT strftime('%Y-%m-%d',pickup_datetime) AS date, COUNT(
    (SELECT distance FROM taxi WHERE pickup_datetime LIKE '2014%'
    UNION ALL
    SELECT distance FROM uber WHERE pickup_datetime LIKE '2014%'
    ) 
    )
FROM (
SELECT pickup_datetime
FROM taxi
WHERE pickup_datetime LIKE '2014%'

UNION ALL

SELECT pickup_datetime
FROM uber
WHERE pickup_datetime LIKE '2014%'
) AS a

JOIN dailyWeather ON strftime('%Y-%m-%d',a.pickup_datetime)=dailyWeather.id
GROUP BY strftime('%Y-%m-%d',pickup_datetime)
ORDER BY dailyWeather.DailyWindSpeed DESC
LIMIT 10
