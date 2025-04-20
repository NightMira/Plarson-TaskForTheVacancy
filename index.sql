WITH months AS (
    SELECT 1 AS month_num, 'Январь' AS month_name, 31 AS days UNION ALL
    SELECT 2, 'Февраль', 
        CASE 
            WHEN EXTRACT(YEAR FROM CURRENT_DATE) % 4 = 0 AND 
                 (EXTRACT(YEAR FROM CURRENT_DATE) % 100 <> 0 OR 
                 EXTRACT(YEAR FROM CURRENT_DATE) % 400 = 0) 
            THEN 29 ELSE 28 
        END UNION ALL
    SELECT 3, 'Март', 31 UNION ALL
    SELECT 4, 'Апрель', 30 UNION ALL
    SELECT 5, 'Май', 31 UNION ALL
    SELECT 6, 'Июнь', 30 UNION ALL
    SELECT 7, 'Июль', 31 UNION ALL
    SELECT 8, 'Август', 31 UNION ALL
    SELECT 9, 'Сентябрь', 30 UNION ALL
    SELECT 10, 'Октябрь', 31 UNION ALL
    SELECT 11, 'Ноябрь', 30 UNION ALL
    SELECT 12, 'Декабрь', 31
)
SELECT 
    month_name AS "Месяц",
    days AS "Дней в месяце"
FROM 
    months
ORDER BY 
    month_num;