/* BETWEEN AND */

-- return 2 columns (customer_id, return_date)
-- and select only rows where return_date is between '2005-06-30' and '2005-07-30' (eg. 2005-07-02, 2005-07-13)
SELECT customer_id, return_date
FROM sakila.rental
WHERE return_date BETWEEN '2005-06-30 13:00:00' AND '2005-07-30 13:00:00';

-- return 2 columns (customer_id, return_date)
-- and select only rows where return_date is between '2005-06-30 13:00:00' and '2005-07-30 13:00:00'
SELECT customer_id, return_date
FROM sakila.rental
WHERE return_date BETWEEN '2005-06-30 13:00:00' AND '2005-07-30 13:00:00';

-- return 2 columns (customer_id, return_date)
-- and select only rows where last_name string start with letters like 'D,E' (<D, F) - symbol before F!) 
SELECT first_name, last_name
FROM sakila.customer
WHERE last_name BETWEEN 'D' AND 'F'

-- return 2 columns (customer_id, return_date)
-- and select only rows where last_name's first letter is in range (D, E, F). 
SELECT first_name, last_name
FROM sakila.customer
WHERE LEFT(last_name, 1) BETWEEN 'D' AND 'F'