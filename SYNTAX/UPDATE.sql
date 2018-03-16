/* UPDATE */

-- finds row with id equals 201 from sakila.actor table and
-- change first_name column value to 'Bogusław' 
UPDATE 
    sakila.actor
SET
	first_name = 'Bogusław'
WHERE
    actor_id = 201

-- finds row with id equals 202 from sakila.actor table and
-- change first_name and last_name columns values to 'Jan' and 'Kowalski' 
UPDATE
	sakila.actor
SET
	first_name = 'Jan', last_name = 'Kowalski'
WHERE
	actor_id = 202

