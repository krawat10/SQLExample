/* LIKE IN */

-- return 2 columns (title, description),
-- select only rows where description contains 'drama' string
-- and order by title
SELECT title, description
FROM sakila.film
WHERE description LIKE '%drama%'
-- % every word/string, case insensitive
ORDER BY title;

-- return 3 columns (title, description, rating)
-- select only row where rating has word 'G' or words 'PG'
-- and order by title
SELECT title, description, rating
FROM sakila.film
WHERE rating IN ('G', 'PG')
ORDER BY title;