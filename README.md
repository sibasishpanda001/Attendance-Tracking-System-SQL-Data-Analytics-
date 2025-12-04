# 📊 Attendance Tracking System (SQL Project)

This project is a complete **SQL-based Attendance Tracking System** that stores employee attendance records and performs data analysis using SQL queries.  
It includes database design, table creation, data insertion, analytical queries, and insights based on attendance patterns.

---

## 🚀 Project Overview

This SQL project demonstrates how to:

- Create relational tables (`employee` and `attendence`)
- Insert attendance data
- Track present/absent days
- Detect late arrivals
- Calculate attendance percentage
- Generate monthly attendance reports
- Apply data analytics concepts (KPIs, trends, insights)

---

## 🗂️ Database Schema

### **1. Employee Table**

| Column      | Type         | Description                     |
|-------------|--------------|---------------------------------|
| EmpID       | INT (PK)     | Unique employee ID              |
| EmpName     | VARCHAR(50)  | Employee name                   |
| Department  | VARCHAR(50)  | Department name                 |

### **2. Attendence Table**
*(Note: Table name uses “attendence” based on MySQL setup)*

| Column      | Type         | Description                       |
|-------------|--------------|-----------------------------------|
| AttendID    | INT (PK)     | Unique attendance record ID       |
| EmpID       | INT (FK)     | Links to Employee table           |
| AttendDate  | DATE         | Date of attendance                |
| InTime      | TIME         | Login time                        |
| OutTime     | TIME         | Logout time                       |
| Status      | VARCHAR(10)  | Present / Absent                  |

---

## 🛠️ Setup Instructions

### Create the Database**
```sql
CREATE DATABASE attendencedb;
USE attendencedb;
