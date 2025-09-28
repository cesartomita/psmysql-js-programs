CREATE FUNCTION fn_js_upper_case(str TEXT)
RETURNS TEXT
LANGUAGE JS
DETERMINISTIC
AS $$
	return str.toUpperCase();
$$;