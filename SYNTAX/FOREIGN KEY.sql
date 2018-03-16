/* Foregin KEY */

-- First table
CREATE TABLE kursantki
(
  kursantki_id INT AUTO_INCREMENT PRIMARY KEY,
  imie varchar(30) NOT NULL,
  nazwisko varchar(80) NOT NULL DEFAULT 'brak nazwiska'
);
-- Adds row
INSERT INTO kursantki(imie, nazwisko) VALUES( "Ewa", "Kowalska");


-- Second table
CREATE TABLE kurs
(
    kurs_id INT
    AUTO_INCREMENT PRIMARY KEY,
    nazwa VARCHAR(20) NOT NULL
);
-- Adds row
INSERT INTO kurs(nazwa) VALUES('C++');


-- Connection table, after adding a foregin keys, you can't add rows with foregin keys which aren't
-- correspont to primary keys in associated tables 
CREATE TABLE nauka
(
    nauka_id INT
    AUTO_INCREMENT PRIMARY KEY,
    kursantki_id INT, 
    kurs_id INT,
     FOREIGN KEY(kursantki_id) REFERENCES kursantki(kursantki_id), --set columns as foregin key from 'kursantki' table
     FOREIGN KEY(kurs_id) REFERENCES kurs(kurs_id) --set columns as foregin key from 'kurs' table
);
-- Adds row
INSERT INTO nauka(kursantki_id, kurs_id) VALUES(1, 1);


-- Show association between 'kurs' and 'kursantki' base on connection table 'nauka'
SELECT
    nauka.nauka_id,
    kursantki.imie,
    kursantki.nazwisko,
    kurs.nazwa
FROM
    nauka
    LEFT JOIN
    kursantki ON nauka.kursantki_id = kursantki.kursantki_id
    LEFT JOIN
    kurs ON nauka.kurs_id = kurs.kurs_id;
/*
# nauka_id, imie, nazwisko, nazwa
    '1', 'Ewa', 'Kowalska', 'C++'
*/