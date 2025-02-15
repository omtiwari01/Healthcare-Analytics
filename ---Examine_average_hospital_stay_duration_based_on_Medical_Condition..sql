---Examine_average_hospital_stay_duration_based_on_Medical_Condition.


SELECT Medical_Condition, 
       ROUND(AVG(DATEDIFF(day, Date_of_Admission, Discharge_Date)), 2) AS avg_stay_days
FROM h_care
GROUP BY Medical_Condition
ORDER BY avg_stay_days DESC;
