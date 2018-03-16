/* SUBQUERY */


-- finds average and sum of payments of customer. Customer is finded by 'customer_id'. 
SELECT
    SUM(amount), AVG(amount)
FROM
    sakila.payment
WHERE
    customer_id -- where id is equal \/
    IN ( --SUBQUERY, finds specific customer
        SELECT
            customer_id
        FROM
            sakila.customer
        WHERE
            last_name = 'SMITH'
        );


-- finds average sum of payments of customers. Customers are finded and grouped by 'customer_id'.
SELECT
    customer_id , SUM(amount), AVG(amount)
FROM
    sakila.payment
WHERE
    customer_id 
    IN ( -- subquery, finds customers
        SELECT
            customer_id
        FROM
            sakila.customer
        WHERE
            first_name = 'MARION'
        )
    GROUP BY customer_id; -- groups customers


-- finds actors which played in a short movies (< 50 min). There is connection between 3 tables (many to many) 
SELECT
    *   --select all actor's columns
FROM
    sakila.actor
WHERE
   actor_id --id are defined by subquery \/
    IN ( --subquery
        SELECT 
                actor_id -- finds actors where 'film_id' is specified by nested query. 
            FROM
                sakila.film_actor
            WHERE
                film_id -- select actors where id is equal \/
                    IN ( --subsubquery
                        SELECT -- finds films where duration is lees than 50 minutes and get only film id
                            film_id
                        FROM
                            sakila.film
                        WHERE
                            length < 50
                        )
        );

