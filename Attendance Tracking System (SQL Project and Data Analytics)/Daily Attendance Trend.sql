#Data Analytics Queries
#Daily Attendance Trend (Time Series Analysis)
SELECT AttendDate,
       SUM(CASE WHEN Status='Present' THEN 1 END) AS PresentCount,
       SUM(CASE WHEN Status='Absent' THEN 1 END) AS AbsentCount
FROM Attendence
GROUP BY AttendDate
ORDER BY AttendDate;
