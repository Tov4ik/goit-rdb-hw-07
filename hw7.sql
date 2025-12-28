SELECT 
    id, 
    date, 
    YEAR(date) AS selected_year, 
    MONTH(date) AS selected_month, 
    DAY(date) AS selected_day
FROM orders;

SELECT 
    id, 
    date, 
    DATE_ADD(date, INTERVAL 1 DAY) AS date_plus_one
FROM orders;

SELECT 
    id, 
    date, 
    UNIX_TIMESTAMP(date) AS timestamp_value
FROM orders;

SELECT 
    COUNT(*) AS orders_count
FROM orders
WHERE date BETWEEN '1996-07-10 00:00:00' AND '1996-10-08 00:00:00';

SELECT 
    id, 
    date, 
    JSON_OBJECT('id', id, 'date', date) AS json_data
FROM orders;
