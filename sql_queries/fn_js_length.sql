CREATE FUNCTION fn_js_length(str TEXT)
RETURNS INT
LANGUAGE JS
DETERMINISTIC
AS $$
	return str.length;
$$;