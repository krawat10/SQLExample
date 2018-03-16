/* Text function */

-- Gets length of text
SELECT LENGTH('Tomek') -- 5

-- Sorts rows by 'title' lenght
SELECT title, LENGTH(title) AS TEXT_LENGTH -- alias
FROM sakila.film
ORDER BY TEXT_LENGTH; -- LENGTH(title)

--
SELECT LENGTH('zolty') -- 5
SELECT LENGTH('żółty') -- 8 (polish char == 2 normal char)
SELECT CHAR_LENGTH('żółty') -- 5 (normal counting)

-- returns 'title' and first 5 letters from 'title' column
SELECT title, LEFT(title, 5) 
FROM sakila.film; 
--'ACADEMY DINOSAUR'	'ACADE'

-- returns 'title' and fifth and sixth letter from 'title' column
SELECT title, MID(title, 5,2) -- starst from 5 position and get 2 next letters
FROM sakila.film;
-- 'ACADEMY DINOSAUR'	'EM'

-- returns 'title' and last 5 letters from 'title' column
SELECT title, RIGHT(title, 5)
FROM sakila.film;
-- 'ACADEMY DINOSAUR'	'OSAUR'

-- concats columns with separator
SELECT CONCAT(first_column, ' separator ', second_column)
FROM sakila.film;

-- concats multiple columns and adds separators between. 
SELECT CONCAT_WS(', ', title, replacement_cost, release_year)
FROM sakila.film;
-- 'ACADEMY DINOSAUR, 20.99, 2006'

-- returns first index of matched word
SELECT LOCATE('finger', 'goldfinger') -- 5 (0 if not matched)

-- returns title and reverse title columns
SELECT title, REVERSE(title)
FROM sakila.film
-- 'ACADEMY DINOSAUR'	'RUASONID YMEDACA'

--returns title and title in lower case 
SELECT title, LOWER(title) -- UPPER(title) 
FROM sakila.film;
-- 'ACADEMY DINOSAUR'	'academy dinosaur'
