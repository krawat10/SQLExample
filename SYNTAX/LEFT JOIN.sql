/* LEFT JOIN */

-- finds all actors whose playes in short movies (under 50 minutes)
-- Some of actors will be multiplied, because it shows also movie titles. Some of
-- actors could play in more short movies (actor 'ABC' played in 2 short movies)  
SELECT
    actor.first_name, actor.last_name, film.title
FROM
    film_actor
    LEFT JOIN
        film ON film_actor.film_id = film.film_id
    LEFT JOIN
        actor ON film_actor.actor_id = actor.actor_id
WHERE
    film.length < 50;


-- Returns city name, city population and country name from country and city code (connected by Code (eq. POL)).
-- In left join, firsty are returned all countries (left side) and then cities are connected. Some of cities
-- can be added twice(if they are duplicated) and then it is also added to result. 
SELECT city.Name, city.Population, country.Name
FROM country 
    LEFT JOIN city ON city.CountryCode=country.Code;
-- 4086 rows

-- Returns city name, city population and country name from country and city code (connected by Code (eq. POL)).
-- In right join, firstly are returned all cities (right side) and then countries are connected. Duplicated
-- cities are not returned (because we ask 'SELECT Name, Population FROM city'). 
SELECT
    city.Name, city.Population, country.Name
FROM
    country
    RIGHT JOIN city ON city.CountryCode = country.Code; 
-- 4079 rows