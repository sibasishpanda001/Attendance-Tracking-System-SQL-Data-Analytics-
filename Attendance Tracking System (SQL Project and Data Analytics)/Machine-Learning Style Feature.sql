#Data Analytics Queries
#Machine-Learning Style Feature: Absenteeism Risk Score
#(Higher score = more likely to be absent)
SELECT e.EmpName,
       (SUM(CASE WHEN Status='Absent' THEN 1 END) * 1.5) +
       (SUM(CASE WHEN InTime > '09:00:00' AND Status='Present' THEN 1 END) * 1.0)
       AS AbsenteeismRiskScore
FROM Employee e
JOIN Attendence a ON e.EmpID = a.EmpID
GROUP BY e.EmpName
ORDER BY AbsenteeismRiskScore DESC;
