CREATE TABLE IF NOT EXISTS hourlyWeather (
id INTEGER PRIMARY KEY,
date DATETIME,
HourlyPrecipitation FLOAT,
HourlyWindSpeed FLOAT
);

CREATE TABLE IF NOT EXISTS dailyWeather (
id DATE PRIMARY KEY,
DailyPrecipitation FLOAT,
DailyWindSpeed FLOAT
);

CREATE TABLE IF NOT EXISTS taxi (
id INTEGER PRIMARY KEY,
pickup_datetime DATETIME,
pickup_longitude FLOAT,
pickup_latitude FLOAT,
dropoff_longitude FLOAT,
dropoff_latitude FLOAT,
distance FLOAT
);

CREATE TABLE IF NOT EXISTS uber (
id INTEGER PRIMARY KEY,
pickup_datetime DATETIME,
pickup_longitude FLOAT,
pickup_latitude FLOAT,
dropoff_longitude FLOAT,
dropoff_latitude FLOAT,
distance FLOAT
);
