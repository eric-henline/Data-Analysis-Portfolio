-- Write a SQL statement to COUNT the number of valid (i.e. Status = Approved) outage events sorted by their reason for 2017

SELECT
	Count(*) as Total_Number_Outage_Events,
  Status,
	Reason
FROM
	AEMR
WHERE
	Status='Approved'
	AND YEAR(Start_Time)=2017
GROUP BY
	Status,
	Reason
ORDER BY
	Reason
