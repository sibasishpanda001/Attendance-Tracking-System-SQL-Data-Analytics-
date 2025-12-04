#Data Analytics Queries
#Productivity Hours (OutTime - InTime) (Only for Present employees)
SELECT e.EmpName, a.AttendDate,
TIMESTAMPDIFF(HOUR, a.InTime, a.OutTime) AS WorkingHours
FROM Attendence a
JOIN Employee e ON a.EmpID = e.EmpID
WHERE a.Status = 'Present';


