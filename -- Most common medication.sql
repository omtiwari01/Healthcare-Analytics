-- Most common medication

SELECT TOP 10 Medication, COUNT(*) AS medication_count
FROM h_care
GROUP BY Medication
ORDER BY medication_count DESC;
