---top 5 Medical_condition_contributing_to_high_medical_costs

SELECT TOP 5 Medical_Condition, 
       ROUND(AVG(Billing_Amount), 2) AS avg_medical_cost,
       COUNT(*) AS patient_count
FROM h_care
GROUP BY Medical_Condition
ORDER BY avg_medical_cost DESC;
