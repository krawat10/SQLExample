/* CREATE TABLE */

-- creates a table with intiger, string, string, string columns
CREATE TABLE kursant(
	kursant_id INT, 
    imie VARCHAR(15),
    nazwisko VARCHAR(80),
	kurs VARCHAR(5)
);


-- tries to remove datatable (if exists)
DROP TABLE IF EXISTS kursant;

-- shows full definition of created table
SHOW CREATE TABLE kursant;

-- shows information about table (date of creation, columns etc.)
SHOW TABLE STATUS;


-- creates a table with intiger(as primary key and auto increment), string, string, string columns
CREATE TABLE kursant
(
    kursant_id INT PRIMARY KEY AUTO_INCREMENT, -- main unique key + automatically increment
    imie VARCHAR(15),
    nazwisko VARCHAR(80),
    kurs VARCHAR(5)
);
-- We don't need to specify 'kursant_id' value 
INSERT INTO kursantki
    (imie, nazwisko, kurs)
VALUES
    ( "Ewa", "Kowalskia", "EE212");


-- creates a table with intiger(as primary key and auto increment), string, string, string columns
CREATE TABLE kursant
(
    kursant_id SERIAL, -- main unique key + automatically increment + big int
    imie VARCHAR(15)
);


-- creates a table with intiger(as primary key), string, string, string columns
CREATE TABLE kursant
(
    kursant_id INT PRIMARY KEY AUTO_INCREMENT,
    -- main unique key
    imie VARCHAR(15),
    nazwisko VARCHAR(80),
    kurs VARCHAR(5)
);


-- creates a table with intiger(not null and unique value), string, string (with default value), string columns
-- and polish encoding and using InnerDB engine.
-- If table has one unque values in column, it is indexed automatically.
CREATE TABLE kursant
(
    kursant_id INT NOT NULL UNIQUE, -- 'kursant_id' can't be empty + must be unique key 
    imie VARCHAR(15),
    nazwisko VARCHAR(80) NOT NULL DEFAULT 'brak nazwiska', -- if not set, default value
    kurs VARCHAR(5)
)
ENGINE = InnoDB
DEFAULT CHARACTER
SET = utf8
COLLATE = utf8_polish_ci;


