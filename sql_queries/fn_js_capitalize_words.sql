CREATE FUNCTION fn_js_capitalize_words(txt TEXT)
RETURNS TEXT
LANGUAGE JS
DETERMINISTIC
AS $$
	return txt.split(" ").map(word => word.charAt(0).toUpperCase() + word.slice(1)).join(" ").trim();
$$;