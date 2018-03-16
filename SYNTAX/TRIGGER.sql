/* TRIGGER */
-- Triggers are used to execute some queries in background when specific query are executed.


-- Indicate which 'kursantka' sell something
ALTER TABLE zadania.sell ADD kursantki_id INT;

-- Indicates last sell of specific 'kursantka'
ALTER TABLE testowa.kursantki ADD last_sell_id INT;

-- Creates trigger
CREATE TRIGGER adds_last_product_when_new_sell 
-- When something is inserted to 'sell' table
AFTER INSERT ON zadania.sell
-- On every row
FOR EACH ROW
-- Event which will be executed after 'INSERT zadania.sell':
    UPDATE testowa.kursantki 
    -- new.id is id of inseted 'sell' row
    SET last_product_id=new.id 
    -- select 'kursantki' row where kursantki_id is equals 'kursantki_id' 
    -- from new 'sell' column.
    WHERE kursantki_id=new.kursantki_id; 


-- Removes trigger
DROP TRIGGER IF EXISTS adds_last_product_when_new_sell;