#Data Analytics Queries
#Late Arrival Detection (Office time 9:00 AM)
SELECT e.EmpName, a.AttendDate, a.InTime
FROM Attendence a
JOIN Employee e ON a.EmpID = e.EmpID
WHERE a.Status = 'Present'
AND a.InTime > '09:00:00'
ORDER BY a.AttendDate;
