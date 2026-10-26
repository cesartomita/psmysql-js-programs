USE sandbox;

DROP FUNCTION IF EXISTS fn_validate_email_js;

DELIMITER //

CREATE FUNCTION fn_validate_email_js(email VARCHAR(255))
RETURNS BOOLEAN DETERMINISTIC LANGUAGE JS AS $$
  if (!email) return false;
  const emailRegex = /^[a-zA-Z0-9!#$%&'*+\/=?^_`{|}~-]+(?:\.[a-zA-Z0-9!#$%&'*+\/=?^_`{|}~-]+)*@(?:[a-zA-Z0-9](?:[a-zA-Z0-9-]*[a-zA-Z0-9])?\.)+[a-zA-Z0-9](?:[a-zA-Z0-9-]*[a-zA-Z0-9])?$/;
  return emailRegex.test(email);
$$//

DELIMITER ;