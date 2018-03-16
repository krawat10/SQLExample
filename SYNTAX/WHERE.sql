/* WHERE */

-- returns 2 columns (title, rental_rate) and select only rows where rental_rate is less than 3 
SELECT title, rental_rate
FROM sakila.film
WHERE rental_rate < 3;

-- returns 2 columns (title, rental_rate), select only rows where rental_rate is less than 3 and order by rental_rate ascendent  
SELECT title, rental_rate
FROM sakila.film
WHERE rental_rate < 3
ORDER BY rental_rate;

-- returns 2 columns (title, rental_rate), select only rows where rental_rate is equal 3
SELECT title, rental_rate
FROM sakila.film
WHERE rental_rate = 3;

-- returns 2 columns (title, rental_rate), 
-- select only rows where rental_rate is greather than 1 and less than 5
-- and order by rental_rate ascendent  
SELECT title, rental_rate
FROM sakila.film
WHERE rental_rate > 1 AND rental_rate < 5
ORDER BY rental_rate;