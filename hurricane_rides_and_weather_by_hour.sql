
SELECT COUNT(
    (SELECT distance FROM taxi WHERE (
       pickup_datetime LIKE '2012-10-22%'
    OR pickup_datetime LIKE '2012-10-23%'
    OR pickup_datetime LIKE '2012-10-24%'
    OR pickup_datetime LIKE '2012-10-25%'
    OR pickup_datetime LIKE '2012-10-26%'
    OR pickup_datetime LIKE '2012-10-27%'
    OR pickup_datetime LIKE '2012-10-28%'
    OR pickup_datetime LIKE '2012-10-29%'
    OR pickup_datetime LIKE '2012-10-30%'
    OR pickup_datetime LIKE '2012-10-31%'
    OR pickup_datetime LIKE '2012-11-01%'
    OR pickup_datetime LIKE '2012-11-02%'
    OR pickup_datetime LIKE '2012-11-03%'
    OR pickup_datetime LIKE '2012-11-04%'
    OR pickup_datetime LIKE '2012-11-05%'
    OR pickup_datetime LIKE '2012-11-06%'
    )
    
    UNION ALL
    
    SELECT distance FROM uber WHERE (
       pickup_datetime LIKE '2012-10-22%'
    OR pickup_datetime LIKE '2012-10-23%'
    OR pickup_datetime LIKE '2012-10-24%'
    OR pickup_datetime LIKE '2012-10-25%'
    OR pickup_datetime LIKE '2012-10-26%'
    OR pickup_datetime LIKE '2012-10-27%'
    OR pickup_datetime LIKE '2012-10-28%'
    OR pickup_datetime LIKE '2012-10-29%'
    OR pickup_datetime LIKE '2012-10-30%'
    OR pickup_datetime LIKE '2012-10-31%'
    OR pickup_datetime LIKE '2012-11-01%'
    OR pickup_datetime LIKE '2012-11-02%'
    OR pickup_datetime LIKE '2012-11-03%'
    OR pickup_datetime LIKE '2012-11-04%'
    OR pickup_datetime LIKE '2012-11-05%'
    OR pickup_datetime LIKE '2012-11-06%'
    ) 
    )), hourlyWeather.HourlyPrecipitation, hourlyWeather.HourlyWindSpeed
FROM (
    SELECT distance, pickup_datetime FROM taxi WHERE (
       pickup_datetime LIKE '2012-10-22%'
    OR pickup_datetime LIKE '2012-10-23%'
    OR pickup_datetime LIKE '2012-10-24%'
    OR pickup_datetime LIKE '2012-10-25%'
    OR pickup_datetime LIKE '2012-10-26%'
    OR pickup_datetime LIKE '2012-10-27%'
    OR pickup_datetime LIKE '2012-10-28%'
    OR pickup_datetime LIKE '2012-10-29%'
    OR pickup_datetime LIKE '2012-10-30%'
    OR pickup_datetime LIKE '2012-10-31%'
    OR pickup_datetime LIKE '2012-11-01%'
    OR pickup_datetime LIKE '2012-11-02%'
    OR pickup_datetime LIKE '2012-11-03%'
    OR pickup_datetime LIKE '2012-11-04%'
    OR pickup_datetime LIKE '2012-11-05%'
    OR pickup_datetime LIKE '2012-11-06%'
    )
    
    UNION ALL
    
    SELECT distance, pickup_datetime FROM uber WHERE (
       pickup_datetime LIKE '2012-10-22%'
    OR pickup_datetime LIKE '2012-10-23%'
    OR pickup_datetime LIKE '2012-10-24%'
    OR pickup_datetime LIKE '2012-10-25%'
    OR pickup_datetime LIKE '2012-10-26%'
    OR pickup_datetime LIKE '2012-10-27%'
    OR pickup_datetime LIKE '2012-10-28%'
    OR pickup_datetime LIKE '2012-10-29%'
    OR pickup_datetime LIKE '2012-10-30%'
    OR pickup_datetime LIKE '2012-10-31%'
    OR pickup_datetime LIKE '2012-11-01%'
    OR pickup_datetime LIKE '2012-11-02%'
    OR pickup_datetime LIKE '2012-11-03%'
    OR pickup_datetime LIKE '2012-11-04%'
    OR pickup_datetime LIKE '2012-11-05%'
    OR pickup_datetime LIKE '2012-11-06%'
    )
) AS a
JOIN hourlyWeather ON strftime('%Y-%m-%d %H',a.pickup_datetime)=strftime('%Y-%m-%d %H',hourlyWeather.date)
GROUP BY strftime('%Y-%m-%d %H',a.pickup_datetime)
