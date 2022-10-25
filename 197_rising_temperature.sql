-- Oracle: Objective is to identify IDs where the temperature is more than previous day temperature
-- Problem: https://leetcode.com/problems/rising-temperature/description/
SELECT Weather.id
FROM Weather
LEFT JOIN (
    SELECT recordDate + 1 AS adjustedDate,
        temperature AS prevTemperature
    FROM Weather
) previous_day_temp
ON Weather.recordDate = previous_day_temp.adjustedDate
WHERE Weather.temperature > previous_day_temp.prevTemperature