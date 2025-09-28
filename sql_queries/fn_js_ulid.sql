CREATE DEFINER=`root`@`localhost` FUNCTION `fn_js_ulid`() RETURNS char(26) CHARSET utf8mb4
    LANGUAGE JS
AS $$

function generateULID() {
    const BASE32 = '0123456789ABCDEFGHJKMNPQRSTVWXYZ';
    const TIME_LENGTH = 10;
    const RANDOM_LENGTH = 16;
    const timestamp = Date.now();

    function encodeBase32(number, length) {
        let result = '';
        let value = number;
        for (let i = 0; i < length; i++) {
            const index = value % 32;
            result = BASE32[index] + result;
            value = Math.floor(value / 32);
        };
        return result;
    };

    function randomBase32(length) {
        let result = '';
        for (let i = 0; i < length; i++) {
            const randomValue = Math.floor(Math.random() * 32);
            result += BASE32[randomValue];
        };
        return result;
    };

    const timePart = encodeBase32(timestamp, TIME_LENGTH);
    const randomPart = randomBase32(RANDOM_LENGTH);
    return timePart + randomPart;
};

return generateULID();

$$