# 📊 Employee Salaries & Performance Analysis Dashboard  

### 🚀 A SQL-based HR & Finance Analytics Project  

## 📂 Project Overview  
This project focuses on **employee salary and performance analysis** using **SQL window functions**. It is designed for HR and finance domains to gain insights into salary distribution, performance tracking, and department-wise trends. The final output integrates **SQL analytics with a Tableau dashboard** for comprehensive reporting.  

---

## 📄 Dataset  
The dataset consists of **employee records** from a fictional company (**TechCorp**), including:  
- **Employee Name**  
- **Department**  
- **Salary**  
- **Hire Date**  
- **Performance Score**  

---

## 🛠 SQL Analysis  

### 1️⃣ Salary Analysis  
✅ **Identify top earners by department** using `RANK()` and `DENSE_RANK()`  
✅ **Analyze salary distribution** using `AVG()` and `SUM()`  

```sql
SELECT EmployeeID, EmployeeName, Department, Salary,
       RANK() OVER (PARTITION BY Department ORDER BY Salary DESC) AS SalaryRank
FROM Employees;
```
Link to visualisation: https://public.tableau.com/app/profile/kaydacoder/viz/Salary_Insights_Dashboards/DepartmentSalaryInsights



