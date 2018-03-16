Data types in SQL:
    numbers
        TINYINT - 1 byte 
        SMALLINT - 2 bytes
        MEDIUMINT - 3 bytes
        INT - 4 bytes
        BIGINT - 8 bytes
        FLOAT - 4 bytes
        DOUBLE - 8 bytes
        DECIMAL(m,d) = M + 2 bytes, DECIMAL(5,2) => 123.45
    binary-text
        CHAR - 255 - automatically fills empty values
        VARCHAR - 255 - saves information about string length
        TINYTEXT
        TEXT
        MEDIUMTEXT
        LONGTEXT
        ENUM - (1-65535 values) - only one element in field 
        SET - (1-64 values) - multiple elements in one field
        TINYBLOB (-255)
        BLOB - (<64kB)
        MEDIUMBLOB - (<16MB)
        LONGBLOB - (<4GB)
    date
        DATE - RRRR-MM-DD
        DATETIME - RRRR-MM-DD HH:MM:SS
        TIMESTAMP - automatically adds date and time from system
        TIME - HH:MM:SS
        YEAR - RRRR