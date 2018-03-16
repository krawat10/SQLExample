/* DATE FUNCTIONS */

-- returns current date and time
SELECT NOW(); -- '2018-02-25 18:30:42'
SELECT CURRENT_TIMESTAMP(); -- '2018-02-25 18:30:42'

-- returns day name
SELECT DAYNAME('2018-02-25 18:30:42'); -- 'Sunday'

-- returns day of month
SELECT DAYOFMONTH('2018-02-25 18:30:42'); -- '25'

-- returns day of week
SELECT DAYOFWEEK('2018-02-25 18:30:42'); -- '1' (sunday is a first day of week in US)

-- returns day of year
SELECT DAYOFYEAR('2018-02-25 18:30:42'); -- '56'

-- converts full time format to seconds
SELECT TIME_TO_SEC('18:30:42'); -- '66642'

-- converts seconds to full time
SELECT SEC_TO_TIME('13220'); -- '03:40:20.000000'

-- adds times
SELECT ADDTIME('01:59:30','01:03:56'); -- '03:03:26'

-- subtracts time
SELECT SUBTIME('01:59:30','01:03:56'); -- '00:55:34'

-- adds interval to date
SELECT ADDDATE('2015-04-20', INTERVAL 45 DAY); -- '2015-06-04'

-- subtracts interval from date
SELECT SUBDATE('2015-04-20', INTERVAL 45 DAY); -- '2015-03-06'

-- returns only time from DATE_TIME format
SELECT DATE_FORMAT(NOW(), '%T'); -- '18:45:03'

-- returns only hour from DATE_TIME format
SELECT DATE_FORMAT(NOW(), '%H'); -- '18'

-- returns only hours and minutes from DATE_TIME format
SELECT DATE_FORMAT(NOW(), '%H : %i'); -- '18 : 45'

-- returns only dayname from DATE_TIME format
SELECT DATE_FORMAT(NOW(), '%W'); -- 'Friday'
SELECT DATE_FORMAT(NOW(), '%W %D'); -- 'Friday 20th'
SELECT DATE_FORMAT(NOW(), '%W %D of %M'); -- 'Friday 20th of February'
SELECT DATE_FORMAT(NOW(), '%W %D of %M %Y'); -- 'Friday 20th of February 2018'

-- shows date language
SHOW VARIABLES LIKE '%lc_time_names%'; -- 'lc_time_names'	'en_US'

-- change date language (polish names of days, months etc.)
SET lc_time_names = 'pl_PL';

SELECT DATE_FORMAT(NOW(), '%W'); -- 'niedziela'


