/* INDEXES */

-- INDEXES - increase speed of operations on tables (searching). Indexes are usually assigned to id. 
-- We can add maximum 16 indexes to specific columns. To much indexes (columns with indexes) 
-- can also decrease speed and it should be added carefully.

-- shows all indexes in 'testowa.kursantki' table 
SHOW INDEXES FROM testowa.kursantki

-- creates 'kursantki' table with int, string, string, string columns and set indexing to 'nazwisko' column  
CREATE TABLE kursantki (
  kursantki_id int(11),
  imie varchar(30),
  nazwisko varchar(80),
  kurs varchar(5),
  
  INDEX(nazwisko)
);

-- creates 'kursantki' table with int, string, string, string columns 
-- and sets indexing to 'nazwisko' and 'kurs' column and sets key name as 'nuka'
CREATE TABLE kursantki
(
    kursantki_id int(11),
    imie varchar(30),
    nazwisko varchar(80),
    kurs varchar(5),
  
    INDEX nuka(nazwisko, kurs)
);