CREATE FUNCTION fn_js_base64(str TEXT)
RETURNS TEXT
LANGUAGE JS
DETERMINISTIC
AS $$
	return Buffer.from(str).toString('base64');
$$;