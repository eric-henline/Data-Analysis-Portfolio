-- Write a SQL Statement showing the monthly COUNT of all approved outage types that occurred during 2017. 
-- Order by Reason and Month.

SELECT
    	Status,
    	Reason,
    	Count(*) as Total_Number_Outage_Events,
    	Month(Start_Time) as Month
FROM
	AEMR
WHERE
	Status='Approved'
	AND YEAR(Start_Time) = 2017
GROUP BY
	Status,
    	Reason,
    	Month(Start_Time)
ORDER BY
	Reason,
    	Month
