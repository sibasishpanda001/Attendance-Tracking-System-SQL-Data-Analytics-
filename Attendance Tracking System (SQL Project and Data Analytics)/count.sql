#Present/Absent count
SELECT e.EmpName,
       SUM(CASE WHEN a.Status = 'Present' THEN 1 ELSE 0 END) AS PresentDays,
       SUM(CASE WHEN a.Status = 'Absent' THEN 1 ELSE 0 END) AS AbsentDays
FROM Employee e
LEFT JOIN Attendence a ON e.EmpID = a.EmpID
GROUP BY e.EmpName;
