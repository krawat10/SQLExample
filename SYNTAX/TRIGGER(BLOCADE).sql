/* RESTRICTION TRIGGER */

-- adds new column with intiger value (by default 1)
ALTER TABLE zadania.sell ADD blockade INT DEFAULT 1;

-- Creates new delimeter (replacment of ';' symbol)
DELIMITER $$

    -- Creates trigger which will trigger before any updates on zadania.sell table 
	CREATE TRIGGER update_of_sell BEFORE UPDATE ON zadania.sell
    FOR EACH ROW
		BEGIN --starts procedure

            -- If updated row has 'blockade' column value greather than 0
			IF(SELECT blockade FROM zadania.sell WHERE id=NEW.id)>0 THEN
                -- Throw error
				SIGNAL SQLSTATE '45000' SET message_text = 'Error - cannot update row';
            END IF;
		END $$
    
DELIMITER ;



-- adds column to 'zadania.sell'. 'blockade' value equals 5 (greather than 0)
INSERT INTO zadania.sell
    (id, id_tow, quantity, price, kursantki_id, blockade)
VALUES
    (1, 2, 5, 245, 3, 5);

UPDATE zadania.sell SET quantity=30 WHERE id=1; --ERROR!!



-- adds column to 'zadania.sell'. 'blockade' value equals 0 (not greather than 0)
INSERT INTO zadania.sell
    (id, id_tow, quantity, price, kursantki_id, blockade)
VALUES
    (2, 2, 5, 245, 3, 0);

UPDATE zadania.sell SET quantity=30 WHERE id=2; --OK!!
