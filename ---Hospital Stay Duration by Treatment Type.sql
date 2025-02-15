---Hospital Stay Duration by Treatment Type


SELECT Medication, 
       ROUND(AVG(DATEDIFF(day, Date_of_Admission, Discharge_Date)), 2) AS avg_stay_days,
       COUNT(*) AS patient_count
FROM h_care
GROUP BY Medication
ORDER BY avg_stay_days DESC;
