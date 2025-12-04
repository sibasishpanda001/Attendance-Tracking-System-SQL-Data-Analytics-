#Data Analytics Queries
#Department-wise Performance (Analytics Dashboard KPI)
SELECT 
    e.Department,
    ROUND((SUM(CASE WHEN a.Status='Present' THEN 1 END) * 100.0) /
    COUNT(*), 2) AS DeptAttendencePercentage
FROM Employee e
JOIN Attendence a ON e.EmpID = a.EmpID
GROUP BY e.Department;
