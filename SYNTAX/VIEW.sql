/* Views */
-- Views are easy way to save some queries to single quasi-table

-- Creates view
CREATE VIEW PKB AS
-- definition of view
SELECT 
    GNP AS PKB,
    Name AS Kraj,
    Continent AS Kontynent,
    Population AS Populacja,
    SurfaceArea AS Powierzchnia,
    LifeExpectancy AS DługoscZycia
FROM
    world.country
ORDER BY PKB DESC;


--Returns view
SELECT * FROM world.pkb;
SELECT PKB, Kraj FROM world.pkb;

-- Adds numeration
SET @nr := 0;

-- Incrementation (@nr := @nr + 1)
SELECT @nr := @nr + 1 AS lp, Kraj, PKB FROM world.pkb;

-- Sorting, filtering etc..
SELECT Kraj, PKB
FROM world.pkb
WHERE Kontynent = 'Europe'
ORDER BY DługoscZycia;

-- create view with customers and their payments(sum, average payment)
CREATE VIEW PaymentsPerClient
AS
    SELECT
        CONCAT(C.first_name, ' ', C.last_name) AS Client,
        SUM(P.amount) AS Sum,
        AVG(P.amount) AS averageCost
    FROM
        sakila.payment AS P, sakila.customer AS C
    WHERE
	C.customer_id=P.customer_id
    GROUP BY
	C.customer_id
    ORDER BY
	Sum DESC;