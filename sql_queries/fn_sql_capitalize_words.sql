DELIMITER $$

CREATE DEFINER=`root`@`%` FUNCTION `fn_sql_capitalize_words`(input_string TEXT) RETURNS text CHARSET utf8mb4
    DETERMINISTIC
BEGIN
    DECLARE result TEXT DEFAULT '';
    DECLARE word TEXT;
    DECLARE pos INT DEFAULT 1;
    DECLARE len INT;
    
    SET input_string = TRIM(LOWER(input_string));
    SET len = LENGTH(input_string);
    
    WHILE pos <= len DO
        SET word = SUBSTRING_INDEX(SUBSTRING(input_string, pos), ' ', 1);
        SET result = CONCAT(result, UPPER(LEFT(word, 1)), LOWER(SUBSTRING(word, 2)), ' ');
        SET pos = pos + LENGTH(word) + 1;
    END WHILE;
    
    RETURN TRIM(result);
END$$

DELIMITER $$