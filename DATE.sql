
-- Shows all available variables
SHOW VARIABLES;

-- Show current date and time
SELECT NOW();

CREATE TABLE products
(
    id SERIAL,
    name VARCHAR(255),
    added_time TIMESTAMP -- timestamp will be added automatically after inserting/updating row
);

-- inserting item
INSERT INTO towary (name) -- id and added_time are added automatically
VALUES ('milk');

-- updating row. 'added_time' will be updated
UPDATE towary SET nazwa='white milk' WHERE id=1;