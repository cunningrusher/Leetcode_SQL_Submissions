SELECT id
FROM
(
SELECT id, 
    recordDate, 
    temperature AS today_temp, 
    LAG(temperature,1) OVER (ORDER BY recordDate) AS yesterday_temp, 
    LAG(recordDate,1) OVER (ORDER BY recordDate) AS yes_date

FROM Weather
) AS temp_table

WHERE today_temp>yesterday_temp AND DATEDIFF(recordDate,yes_date)=1