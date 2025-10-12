-- SQL
SELECT
    id,
    JSON_VALUE(json_data, '$.ARR_DELAY') - JSON_VALUE(json_data, '$.DEP_DELAY') AS total_delay
FROM
	flights
LIMIT 100;

-- JS programs
SELECT
	id,
    fn_js_flight_total_delay(json_data) AS total_delay
FROM
	flights
LIMIT 100;

