/* ORDER BY */

-- return 1 column (title) form sakila.film table and order by title (alphabetical) 
SELECT title
FROM sakila.film
ORDER BY title;

-- like above
SELECT title
FROM sakila.film
ORDER BY title ASC;
-- ASC ascendent

-- return 1 column (title) form sakila.film table and REVERSE order by title (alphabetical) 
SELECT title
FROM sakila.film
ORDER BY title DESC;
-- DESC descendent

-- return 2 columns (title, replacement_cost) form sakila.film table 
-- and firstly order by cost (from most expensive) and secondly order alphabetical  
SELECT title, replacement_cost
FROM sakila.film
ORDER BY replacement_cost DESC, title;
/*
ALI FOREVER     23.99
INFORMER DOUBLE	23.99
ISLAND EXORCIST	23.99
JOON NORTHWEST	23.99
LAWRENCE LOVE	23.99
MUSCLE BRIGHT	23.99
ATTACKS HATE	21.99
HORN WORKING    21.99
*/

/* AS */

-- return 3 columns (title as tytul, release_year as rok_wydania, rental_rate, replacement_cost as zakup)
-- and order by zakup (replacement_cost)
SELECT title AS tytul, release_year AS rok_wydania, rental_rate, replacement_cost AS zakup
FROM sakila.film
ORDER BY zakup;