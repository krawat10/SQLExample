

SELECT
    imie,
    CASE imie
        WHEN 'Ola' THEN 'This is Ola'
    END AS firstcase,
    CASE imie
        WHEN 'Magda' THEN 'This is Magda'
    END AS secondcase
FROM
    testowa.kursantki;

/*
#   imie,   firstcase,  secondcase
    Magda,  ,           This is Magda
    Ewa,    , 
    Kinga,  , 
    Ola,    This is Ola, 
*/

SELECT
    imie,
    CASE imie
        WHEN 'Ola' THEN 'This is Ola' ELSE 'Not Ola'
    END AS firstcase,
    CASE imie
        WHEN 'Magda' THEN 'This is Magda' ELSE 'Not Magda'
    END AS secondcase
FROM
    testowa.kursantki;

/*
#   imie,   firstcase,  secondcase
    Magda,  Not Ola,    This is Magda
    Ewa,    Not Ola,    Not Magda
    Kinga,  Not Ola,    Not Magda
    Ola,    This is Ola,Not Magda
*/