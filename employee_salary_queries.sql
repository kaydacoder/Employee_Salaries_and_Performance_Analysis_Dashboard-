-- Use RANK() and DENSE_RANK() to rank employees within each department by salary.
-- RANK () is more strict with the numerical placement where as DENSE_RANK() is more lenient

SELECT EmployeeID, EmployeeName, Department, Salary,
RANK() OVER (PARTITION BY Department ORDER BY Salary DESC) AS SalaryRank,
DENSE_RANK() OVER (PARTITION BY Department ORDER BY Salary DESC) AS DenseSalaryRank
FROM employees;

-- Looking to find the top rated performances in each department
SELECT *FROM (
    SELECT EmployeeID, EmployeeName, Department, PerformanceScore,
           ROW_NUMBER() OVER (PARTITION BY Department ORDER BY PerformanceScore DESC) AS RowNum
    FROM Employees
) ranked
WHERE RowNum = 1;

-- Compare an employee’s salary with the previous and next employee based on hire date. 
SELECT EmployeeID, EmployeeName, Salary, HireDate,
       LAG(Salary) OVER (ORDER BY HireDate) AS PrevSalary,
       LEAD(Salary) OVER (ORDER BY HireDate) AS NextSalary
FROM employees;


-- Using SUM() and AVG() to calculate cumulative salary expenses.
SELECT EmployeeID, EmployeeName, Salary,
       SUM(Salary) OVER (ORDER BY HireDate ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS RunningTotalSalary,
       AVG(Salary) OVER (ORDER BY HireDate ROWS BETWEEN 2 PRECEDING AND CURRENT ROW) AS MovingAvgSalary
FROM Employees;


-- Retreiving the average salary per department. 
WITH DeptAvg AS (
    SELECT 
        EmployeeID, 
        EmployeeName, 
        Department, 
        Salary,
        AVG(Salary) OVER (PARTITION BY Department) AS AvgDeptSalary,
		RANK() OVER (PARTITION BY Department ORDER BY Salary DESC) AS SalaryRank
    FROM Employees
)
SELECT 
    EmployeeID, 
    EmployeeName, 
    Department, 
    Salary, 
    AvgDeptSalary, 
    SalaryRank
FROM DeptAvg
WHERE Salary > AvgDeptSalary
ORDER BY Department, SalaryRank;



