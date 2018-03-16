/* ALTER TABLE */

-- Adds 'wiek' column to 'kursantki' table (without changes of values) 
ALTER TABLE kursantki ADD 'wiek' INT;

-- Removes 'wiek' column from 'kursantki' table
ALTER TABLE kursantki DROP 'wiek';

-- Adds 'klasa' column (with default value) to 'kursantki' table 
-- and sets new column next to 'kursantki_id' column
ALTER TABLE kursantki ADD 'klasa' VARCHAR(5) DEFAULT 'AC01' AFTER 'kursantki_id';