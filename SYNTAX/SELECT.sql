/* SELECT */

-- return string
SELECT "witaj"

-- return 4
SELECT 2+2

-- select all from table
SELECT *
FROM sakila.actor;

-- return 2 columns from sakila.actor table
SELECT actor_id, last_name
FROM dbName.tab;

-- return 1 column (actor_id) and order by last_name table column  
SELECT actor_id
FROM sakila.actor
ORDER BY last_name;

-- return 1 column (actor_id), change column name and order by OtherName (actor_id) column  
SELECT actor_id AS 'OtherName'
FROM sakila.actor
ORDER BY OtherName;