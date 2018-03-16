/* NULL */
-- NULL - can be in any column type (bool, int, text)

-- select rows from sakila.address table
-- where address2 column is null  
SELECT
    *
FROM
    sakila.address
WHERE
    address2 IS NULL

-- select rows from sakila.address table
-- where address2 column is NOT null  
SELECT
    *
FROM
    sakila.address
WHERE
    address2 IS NOT NULL