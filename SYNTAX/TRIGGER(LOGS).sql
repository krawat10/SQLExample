CREATE TABLE event_logs
(
    id SERIAL,
    time TIMESTAMP,
    event_type VARCHAR(255),
    user_name VARCHAR(255),
    table_name VARCHAR(255),
    row_id INT
);

-- Creates a trigger which will add row to 'event_logs' after each insert query on 'sell' table
DELIMITER $$
CREATE TRIGGER sell_log AFTER INSERT ON sell
FOR EACH ROW
	BEGIN
        -- Adds new row to 'event_logs' table
		INSERT INTO event_logs(event_type, user_name, table_name, row_id)
        VALUES('INSERT', 'trigger', 'sell', NEW.id);
	END$$
DELIMITER ;