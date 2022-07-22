-- Write a SQL statement to compare the AVERAGE duration of each individual outage events for both 2016 and 2017. 
-- Order from 2016 to 2017.

SELECT 
	Status,
  	Reason,
  	Year(Start_Time) AS Year,
  	ROUND(AVG(Outage_MW),2) AS Avg_Outage_MW_Loss,
  	Cast(ROUND(AVG(Cast(TIMESTAMPDIFF(MINUTE, Start_Time, End_Time) AS DECIMAL(18,2))),2) AS DECIMAL(18,2)) AS Average_Outage_Duration_Time_Minutes
FROM 
	AEMR
WHERE 
	Status='Approved' 
GROUP BY 
	Status,
  	Reason,
  	Year(Start_Time)
ORDER BY 
	Year(Start_Time),
  	Reason
