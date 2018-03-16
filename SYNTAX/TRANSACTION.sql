/* TRANSACTION */

-- It is very usefull tool. It execute group of SQL queries in one commit:
START TRANSACTION;
	INSERT INTO sell (id_tow, quantity, price) VALUES(1,3,30);
	/*
    ...
    If here will be error (no connection with DB etc.), then all queries in this case won't be executed.
    ...
    */
    UPDATE zadania.towary SET state = state - 3 WHERE id=1;
COMMIT;


START TRANSACTION;
	INSERT INTO sell (id_tow, quantity, price) VALUES(1,3,30);
	UPDATE zadania.towary SET state = state - 3 WHERE id=1;
    /*......
    ........
    ........
    */
    ROLLBACK; -- this query undo previous changes (query above won't be executed)
    /*......
    ........
    ........
    */
COMMIT;