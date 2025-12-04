#Data Analytics Queries
#Attendance Percentage (KPI)
SELECT e.EmpName,
       ROUND((SUM(CASE WHEN a.Status = 'Present' THEN 1 END) * 100.0) /
       COUNT(*), 2) AS AttendencePercentage
FROM Employee e
JOIN Attendence a ON e.EmpID = a.EmpID
GROUP BY e.EmpName;
