-- Write a SQL statement that calculates the average duration in days rounded to 2 decimal places for each approved outage type across both 2016 and 2017. Don't forget to Order this by Reason and Year.

-- Please note: The average duration in days should be rounded to 2 decimal places for ease of comparison. Additionally, include the overall count of outage events per outage type

SELECT
	Status,
  Reason,
  Count(*) as Total_Number_Outage_Events,
  ROUND(AVG((TIMESTAMPDIFF(MINUTE, Start_Time, End_Time)/60)/24),2) AS Average_Outage_Duration_Time_Days,
  YEAR(Start_Time) as Year
FROM
	AEMR
WHERE
	Status='Approved'
GROUP BY
	Status,
  Reason,
  YEAR(Start_Time)
ORDER BY
   YEAR(Start_Time),
   Reason
