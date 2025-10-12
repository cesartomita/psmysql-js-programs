CREATE FUNCTION fn_js_flight_duration_minutes (jsonData JSON)
RETURNS INT
LANGUAGE JS
AS $$

	const arrTime = Number(jsonData["ARR_TIME"]);
	const depTime = Number(jsonData["DEP_TIME"]);
	let diff = arrTime - depTime;
	if (diff < 0) diff += 24;
	return Math.round(diff * 60);
	
$$;