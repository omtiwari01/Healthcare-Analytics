---patient distribution by age group.

SELECT 
    CASE 
        WHEN age BETWEEN 0 AND 18 THEN '0-18'
        WHEN age BETWEEN 19 AND 35 THEN '19-35'
        WHEN age BETWEEN 36 AND 50 THEN '36-50'
        WHEN age BETWEEN 51 AND 65 THEN '51-65'
        ELSE '66+' 
    END AS age_group,
    COUNT(*) AS patient_count
FROM h_care
GROUP BY age
ORDER BY age;