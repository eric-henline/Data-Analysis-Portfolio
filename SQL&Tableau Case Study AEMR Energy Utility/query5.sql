-- Write a SQL statement showing the total number of all approved outage types that occurred for both 2016 and 2017 per month (i.e. 1 – 12). 
-- Order this by by Month and Year.

SELECT
    	Status,
    	Count(*) as Total_Number_Outage_Events,
    	Month(Start_Time) as Month,
    	Year(Start_Time) as Year
FROM
	AEMR
WHERE
	Status='Approved'
GROUP BY
	Status,
    	Month(Start_Time),
    	Year(Start_Time)
ORDER BY
	Year(Start_Time),
    	Month(Start_Time)
