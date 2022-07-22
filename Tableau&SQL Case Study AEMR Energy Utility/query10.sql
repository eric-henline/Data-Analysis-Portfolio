-- Write a SQL statement to calculate the Average Outage (MW) Loss and Overall Summed Outage (MW) loss for each 
-- participant code where the Status is Approved and the Outage Reason is Forced across both 2016 and 2017.

SELECT 
	Participant_Code,
  Facility_Code,
  Status,
  Year(Start_Time) AS Year,
  ROUND(AVG(Outage_MW),2) AS Avg_Outage_MW_Loss,
  ROUND(SUM(Outage_MW),2) AS Summed_Energy_Lost
FROM 
	AEMR
WHERE 
	Status='Approved' 
	AND Reason='Forced'
GROUP BY 
	Participant_Code,
  Facility_Code,
  Status,
  Year(Start_Time)
ORDER BY 
	Year(Start_Time) ASC,
  ROUND(SUM(Outage_MW),2) DESC
