
SELECT
COUNT(CASE WHEN strftime('%w',pickup_datetime) IS '0' THEN 1 END) AS 'Sunday',
COUNT(CASE WHEN strftime('%w',pickup_datetime) IS '1' THEN 1 END) AS 'Monday',
COUNT(CASE WHEN strftime('%w',pickup_datetime) IS '2' THEN 1 END) AS 'Tuesday',
COUNT(CASE WHEN strftime('%w',pickup_datetime) IS '3' THEN 1 END) AS 'Wednesday',
COUNT(CASE WHEN strftime('%w',pickup_datetime) IS '4' THEN 1 END) AS 'Thursday',
COUNT(CASE WHEN strftime('%w',pickup_datetime) IS '5' THEN 1 END) AS 'Friday',
COUNT(CASE WHEN strftime('%w',pickup_datetime) IS '6' THEN 1 END) AS 'Saturday'
FROM uber
