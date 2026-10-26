DELIMITER //

DROP FUNCTION IF EXISTS fn_validate_email_sql //

CREATE FUNCTION fn_validate_email_sql(p_email VARCHAR(255))
RETURNS TINYINT(1)
DETERMINISTIC
NO SQL
BEGIN
    IF p_email IS NULL OR p_email = '' THEN
        RETURN 0;
    END IF;
    RETURN (p_email REGEXP '^[a-zA-Z0-9!#$%&\'*+/=?^_`{|}~-]+(?:\\.[a-zA-Z0-9!#$%&\'*+/=?^_`{|}~-]+)*@(?:[a-zA-Z0-9](?:[a-zA-Z0-9-]*[a-zA-Z0-9])?\\.)+[a-zA-Z0-9](?:[a-zA-Z0-9-]*[a-zA-Z0-9])?$');
END //

DELIMITER ;