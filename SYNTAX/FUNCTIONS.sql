

DELIMITER $$ 
CREATE FUNCTION hello()
	RETURNS TEXT 
    DETERMINISTIC
		BEGIN
			RETURN 'Hello world';
        END$$
DELIMITER ;

SELECT world.hello();

-- Creates function with 1 argument 'name'
DELIMITER $$ 
CREATE FUNCTION toBrutto( netto double ) --define argument
	RETURNS TEXT 
    DETERMINISTIC
		BEGIN
			DECLARE tax double; -- declares variable
            DECLARE brutto decimal(5,2); -- declares second variable
            SET tax =23; -- sets values on variable
            SET brutto=netto*((tax/100) + 1); -- sets values on second variable
			RETURN CONCAT('Netto: ', netto, ', tax: ', tax, ', brutto: ', brutto, 'PLN.'); --returns result
        END$$
DELIMITER ;
-- Executes function
select world.toBrutto(100);