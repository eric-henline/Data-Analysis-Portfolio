-- Write a SQL statement showing the count of all approved outage types for all participant codes for 2016 and 2017. 
-- Order by Year and Participant_Code.

SELECT
	Count(*) as Total_Number_Outage_Events,
  (Participant_Code),
  Status,
  Year(Start_Time) as Year
FROM
	AEMR
WHERE
	Status='Approved'
GROUP BY
	(Participant_Code),
  Status,
  Year(Start_Time)
ORDER BY 
	Year(Start_Time),
  (Participant_Code)
