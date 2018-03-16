create table liczby(
	a INT,
    b INT,
    c FLOAT,
    d FLOAT,
    e DOUBLE,
    f DOUBLE,
    g DECIMAL(4,2),
    h DECIMAL(4,2)
);

insert into liczby values(1,2, 1.1, 2.2, 1.1, 2.2, 1.1, 2.2);


SELECT a+b FROM liczby; -- 3 (INT+INT)

SELECT c+d FROM liczby; -- 3.3000000715255737 (FLOAT+FLOAT)

SELECT e+f FROM liczby; -- 3.3000000000000003 (DOUBLE+DOUBLE)

SELECT g+h FROM liczby; -- 3.30 (DECIMAL+DECIMAL)

SELECT g+h = 3.30 FROM liczby; -- 0 (logical comparision) 