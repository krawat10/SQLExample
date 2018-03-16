/* INSERT */

-- insert row to sakila.actor table
-- with ID:201, first_name:BOGUSLAW, last_name:LINDA,
-- last_update:2018-01-16 12:15:21
INSERT INTO sakila.actor
VALUES
    (201, 'BOGUSLAW', 'LINDA', '2018-01-16 12:15:21')


-- insert row to sakila.actor table
-- with first_name:JAN, last_name:KOWALSKI.
-- ID is auto_increment, and date_update is on_update CURRENT_TIMESTAMP
INSERT INTO sakila.actor
    (first_name, last_name)
VALUES
    ('JAN', 'KOWALSKI')

-- auto_increment is constant 
-- (even if row is removed counter is not decremented).
-- You cannot insert table to the same primary key.
-- You can insert row on removed id.
