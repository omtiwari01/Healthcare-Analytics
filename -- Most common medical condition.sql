-- Most common medical condition

SELECT TOP 10 Medical_Condition, COUNT(*) AS condition_count
FROM h_care
GROUP BY Medical_Condition
ORDER BY condition_count DESC;