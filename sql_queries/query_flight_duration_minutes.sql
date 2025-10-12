-- SQL
SELECT
    id,
    ROUND(
        CASE
            WHEN JSON_VALUE(json_data, '$.ARR_TIME') - JSON_VALUE(json_data, '$.DEP_TIME') < 0
            THEN JSON_VALUE(json_data, '$.ARR_TIME') - JSON_VALUE(json_data, '$.DEP_TIME') + 24
            ELSE JSON_VALUE(json_data, '$.ARR_TIME') - JSON_VALUE(json_data, '$.DEP_TIME')
			END * 60
    ) AS flight_duration_minutes
FROM
	flights
LIMIT 100;

-- JS Programs
SELECT
    id,
    fn_js_flight_duration_minutes(json_data) AS flight_duration_minutes 
FROM flights
LIMIT 100;