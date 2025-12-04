CREATE TABLE Attendence (
AttendID INT PRIMARY KEY,
EmpID INT,
AttendDate DATE,
InTime TIME,
OutTime TIME,
Status VARCHAR(10),    #present/absent
FOREIGN KEY (EmpID) REFERENCES Employee(EmpID)
);