#Data Analytics Queries
#Identify Low Performers (Attendance < 75%)
SELECT EmpName, AttendencePercentage FROM (
    SELECT e.EmpName,
           (SUM(CASE WHEN a.Status='Present' THEN 1 END) * 100.0) /
           COUNT(*) AS AttendencePercentage
    FROM Employee e
    JOIN Attendence a ON e.EmpID = a.EmpID
    GROUP BY e.EmpName
) AS T
WHERE AttendencePercentage < 75;
