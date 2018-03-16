/* LIMIT OFFSET */

-- return 1 column (actor_id), order by last_name and get first 5 columns (ordered by last_name)
SELECT actor_id
FROM sakila.actor
ORDER BY last_name
LIMIT 5;

-- return 1 column (actor_id), order by last_name, skip first 10 columns, and get next 5 columns (5-15) (ordered by last_name)
SELECT actor_id
FROM sakila.actor
ORDER BY last_name
LIMIT 5  -- get only first 5 columns
OFFSET 10;
--skip 10 coumns