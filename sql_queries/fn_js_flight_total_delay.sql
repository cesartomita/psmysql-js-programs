CREATE FUNCTION fn_js_flight_total_delay (jsonData JSON)
RETURNS INT
LANGUAGE JS
AS $$

	const arrDelay = Number(jsonData["ARR_DELAY"])
	const depDelay = Number(jsonData["DEP_DELAY"])
	const totalDelay = arrDelay - depDelay;
	return(totalDelay);
	
$$;