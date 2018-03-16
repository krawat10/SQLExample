/* REGEXP */

-- return all columns
-- and select only rows where title starts with 'A' letter
SELECT *
FROM sakila.film
WHERE title 
LIKE 'a%';

-- return all columns
-- and select only rows where second letter of title is 'A'.
SELECT *
FROM sakila.film
WHERE title 
LIKE '_a%';
-- _a second letter

-- return all columns
-- and select only rows where title starts with 'A' or 'B' letter.
SELECT *
FROM sakila.film
WHERE 
    title LIKE 'a%' OR
    title LIKE'b%';

-- return all columns
-- and select only rows where title starts with 'A', 'B', 'C', 'D' or 'E' letter.
SELECT *
FROM sakila.film
WHERE title
REGEXP '^[a-e]'

-- return all columns
-- and select only rows where title ends with 'w' letter.
SELECT *
FROM sakila.film
WHERE title
REGEXP 'w$'

-- return all columns
-- and select only rows where title contains space.
SELECT *
FROM sakila.film
WHERE title
REGEXP '[[:space:]]'

-- return all columns
-- and select only rows where title NOT starts with 'A', 'B', 'C', 'D' or 'E' letter.
SELECT *
FROM sakila.film
WHERE title
REGEXP '^[^a-e]'

-- LIKE ABOVE
SELECT *
FROM sakila.film
WHERE title
RLIKE '^[^a-e]'