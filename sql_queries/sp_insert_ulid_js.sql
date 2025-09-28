DELIMITER $$

CREATE PROCEDURE sp_insert_ulid_js(IN p_total INT)
BEGIN
    DECLARE v_count INT DEFAULT 1;

    WHILE v_count <= p_total DO
        INSERT INTO tbl_ulid (ulid) VALUES (fn_js_ulid());

        SET v_count = v_count + 1;
    END WHILE;
END$$

DELIMITER ;