/* NUMB FUNCTIONS */

SELECT 3+2, 3-1, 3*2, 8/4;
--     '5'	'2'	 '6' '2.0000'

-- DIVIDE
SELECT 10/3;
-- '3.3333' -- to float

-- 2^3
SELECT POWER(2,3); -- 8
SELECT POW(2,3);

-- SQUARE
SELECT SQRT(9); -- 3

-- MODULO
SELECT 5 % 2; -- 1
SELECT 5 MOD 2;

-- Returns absolute value
SELECT ABS(-3); -- 3

SELECT SIGN(-5), SIGN(0), SIGN(2) -- '-1', '0', '1' - 3 values

-- Converts from digit to binary
SELECT CONV(5, 10, 2) -- 101 (5 from 10digit to 2digit)

-- Returns pi number
SELECT PI(); -- 3.141593

-- returns rounded number (to second place after dot) 
SELECT ROUND(PI(), 2); -- 3.14
SELECT TRUNCATE(PI(), 2);

-- rounds to full intiger numbae
SELECT CEIL(2.001) -- 3
SELECT FLOOR(2.999) -- 2

-- Return random value between 0-1
SELECT RAND()


