/* PROCEDURES */


-- Creates definition
DELIMITER $$
CREATE PROCEDURE showConturies()
BEGIN
	SELECT * FROM world.country;
END $$
DELIMITER ;
--Executes procedure
call world.showConturies();


-- CREATES PROCEDURE with argument (country code)
DELIMITER $$
CREATE PROCEDURE showConturyByCode(IN in_code VARCHAR(3)) -- definition of argument 'IN in_code VARCHAR(3)'
BEGIN
    -- Procedure's query
	SELECT CONCAT(Name, Continent, Region)
    FROM world.country 
    WHERE Code=in_code; --used argument
END $$
DELIMITER ;
-- Executes procedure
call world.showConturyByCode('POL');

-- Removes procedure
DROP PROCEDURE IF EXISTS showConturyByCode;


-- Creates procedure with out variable. Result of query will be inserted to 'output' variable.
DELIMITER $$
CREATE PROCEDURE showConturyByCode(IN in_code VARCHAR(3), OUT output TEXT)
BEGIN
	SELECT CONCAT(Name, ' ', Continent, ' ',  Region)
    FROM world.country 
    WHERE Code=in_code;
END $$
DELIMITER ;

--Executes procedure
set @output = '0';
call world.showConturyByCode('POL', @output);
select @output; --'output' variable will have result of procedure.