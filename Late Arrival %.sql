#Data Analytics Queries
#Late Arrival % (Analytics KPI)
SELECT e.EmpName,
ROUND(
    (SUM(CASE WHEN a.InTime > '09:00:00' AND a.Status='Present' THEN 1 END) * 100.0)
    /
    SUM(CASE WHEN a.Status='Present' THEN 1 END)
,2) AS LatePercentage
FROM Employee e
JOIN Attendence a ON e.EmpID = a.EmpID
GROUP BY e.EmpName;
