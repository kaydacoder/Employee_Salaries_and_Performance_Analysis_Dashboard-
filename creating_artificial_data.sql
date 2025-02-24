CREATE DATABASE hr_project;

USE hr_project;

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(100),
    Department VARCHAR(50),
    Salary DECIMAL(10,2),
    HireDate DATE,
    PerformanceScore INT
);

INSERT INTO Employees (EmployeeID, EmployeeName, Department, Salary, HireDate, PerformanceScore) VALUES
(1, 'Alice Johnson', 'IT', 70000.00, '2018-05-10', 85),
(2, 'Bob Smith', 'IT', 85000.00, '2016-09-23', 90),
(3, 'Charlie Brown', 'IT', 78000.00, '2019-03-15', 88),
(4, 'David Wilson', 'IT', 65000.00, '2020-07-11', 80),
(5, 'Eve Adams', 'HR', 60000.00, '2017-11-30', 83),
(6, 'Frank White', 'HR', 62000.00, '2019-08-14', 77),
(7, 'Grace Hall', 'HR', 58000.00, '2021-01-25', 79),
(8, 'Hannah Lee', 'HR', 64000.00, '2015-05-20', 85),
(9, 'Isaac Green', 'Finance', 75000.00, '2016-10-05', 92),
(10, 'Jack Black', 'Finance', 72000.00, '2018-12-01', 88),
(11, 'Karen Davis', 'Finance', 77000.00, '2020-06-19', 87),
(12, 'Liam Harris', 'Finance', 68000.00, '2019-02-10', 82),
(13, 'Mia Robinson', 'Marketing', 69000.00, '2017-04-22', 81),
(14, 'Nathan Scott', 'Marketing', 71000.00, '2018-08-30', 86),
(15, 'Olivia Turner', 'Marketing', 67000.00, '2020-10-15', 78),
(16, 'Patrick King', 'Marketing', 73000.00, '2016-12-09', 88),
(17, 'Quinn Parker', 'Sales', 80000.00, '2015-07-18', 91),
(18, 'Rachel Evans', 'Sales', 85000.00, '2017-05-25', 94),
(19, 'Samuel Young', 'Sales', 77000.00, '2019-09-30', 89),
(20, 'Tina Baker', 'Sales', 82000.00, '2020-11-20', 87),
(21, 'Umar Khan', 'IT', 73000.00, '2017-03-10', 86),
(22, 'Vera Lewis', 'HR', 61000.00, '2018-06-12', 80),
(23, 'William Carter', 'Finance', 79000.00, '2021-09-14', 90),
(24, 'Xavier Wright', 'Marketing', 74000.00, '2015-02-28', 85),
(25, 'Yasmine Thomas', 'Sales', 78000.00, '2016-11-07', 88);

INSERT INTO Employees (EmployeeID, EmployeeName, Department, Salary, HireDate, PerformanceScore) VALUES
(26, 'Jasmine Mendez', 'Sales', 78000.00, '2016-11-07', 88);

SELECT * FROM Employees;
