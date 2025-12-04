#Data Analytics Queries
#Monthly Attendance Report
SELECT 
    e.EmpName,
    DATE_FORMAT(a.AttendDate, '%Y-%m') AS Month,
    SUM(CASE WHEN a.Status='Present' THEN 1 END) AS PresentDays,
    SUM(CASE WHEN a.Status='Absent' THEN 1 END) AS AbsentDays
FROM Employee e
JOIN Attendence a ON e.EmpID = a.EmpID
GROUP BY e.EmpName, DATE_FORMAT(a.AttendDate, '%Y-%m')
ORDER BY Month;
