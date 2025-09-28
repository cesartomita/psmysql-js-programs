DELIMITER $$

CREATE DEFINER=`root`@`%` FUNCTION `fn_sql_ulid`() RETURNS char(26) CHARSET utf8mb4
BEGIN
    DECLARE ts BIGINT;
    DECLARE rb BINARY(10);
    DECLARE base32 CHAR(32) DEFAULT '0123456789ABCDEFGHJKMNPQRSTVWXYZ';
    DECLARE i INT;
    DECLARE result_str VARCHAR(32) DEFAULT '';
    DECLARE val INT;

    -- Timestamp 10 chars
    SET ts = UNIX_TIMESTAMP() * 1000;
    SET i = 0;
    WHILE i < 10 DO
        SET val = FLOOR(ts / POW(32, 9 - i)) MOD 32;
        SET result_str = CONCAT(result_str, SUBSTRING(base32, val + 1, 1));
        SET i = i + 1;
    END WHILE;

    -- Random 16 chars
    SET rb = RANDOM_BYTES(10);
    SET i = 1;
    WHILE i <= 10 DO
        SET val = ORD(SUBSTRING(rb, i, 1)) >> 3;
        SET result_str = CONCAT(result_str, SUBSTRING(base32, val + 1, 1));
        SET val = ORD(SUBSTRING(rb, i, 1)) & 31;
        SET result_str = CONCAT(result_str, SUBSTRING(base32, val + 1, 1));
        SET i = i + 1;
    END WHILE;

    RETURN LEFT(result_str, 26);
END$$

DELIMITER ;