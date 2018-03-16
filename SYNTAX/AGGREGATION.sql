

-- returns number of rows where 'customer_id' column equals '1'
SELECT COUNT(*)
FROM sakila.payment
WHERE customer_id=1;

-- returns number of rows where 'customer_id' column equals '1' and 'amount' columns is not null 
SELECT COUNT(amount)
FROM sakila.payment
WHERE customer_id=1;

-- returns minimal value in 'amount' columns
SELECT MIN(amount) -- MAX(amount)
FROM sakila.payment
WHERE customer_id=1;

-- returns sum of all values in 'amount' colums
SELECT SUM(amount) --AVG(amount) <- avreage  
FROM sakila.payment
WHERE customer_id=1;

-- returns standard deviation
SELECT STD(amount)
FROM sakila.payment
WHERE customer_id=1;
-- '2.2670792746395088'

-- returns number of rows where 'district' columns is not duplicated 
SELECT COUNT(DISTINCT district)
FROM sakila.address;

-- returns 'district' columns and groups by it and shows number of occurence of specific 'district' columns
SELECT district, COUNT(*) AS COUNTER
FROM sakila.address
GROUP BY district
ORDER BY COUNTER ;

-- concats 'address' columns  
SELECT GROUP_CONCAT(address SEPARATOR '|') 
FROM sakila.address 
WHERE district='Gois'
-- '984 Effon-Alaiye Avenue|758 Junan Lane|1839 Szkesfehrvr Parkway|1201 Qomsheh Manor|356 Olomouc Manor'

-- groups rows by 'district' column (where 'district' column is the same)
-- and concat 'address' columns
SELECT GROUP_CONCAT(address SEPARATOR '|') 
FROM sakila.address 
GROUP BY district
/*
district:       GROUP_CONCAT(address SEPARATOR '|'):
Central	        470 Boksburg Street|1628 Nagareyama Lane|1658 Jastrzebie-Zdrj Loop
Central Java	544 Malm Parkway|1947 Paarl Way|935 Aden Boulevard
Central Luzon	127 Iwakuni Boulevard|48 Maracabo Place|947 Trshavn Place
*/