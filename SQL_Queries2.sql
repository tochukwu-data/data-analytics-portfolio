CREATE DATABASE employee_analysis;

USE employee_analysis;

CREATE TABLE employees (
Employee_ID INT,
Name VARCHAR(100),
Department VARCHAR(50),
Job_Role VARCHAR(100),
Salary DECIMAL(10,2),
Gender VARCHAR(10),
Education VARCHAR(50)
);

SELECT * FROM employee_data_clean;

SELECT Department,
COUNT(Employee_ID) AS Employee_count
FROM employee_data_clean
GROUP BY Department
ORDER BY Employee_count DESC;

SELECT Department,
SUM(Salary) AS Total_Salary
FROM employee_data_clean
GROUP BY Department
ORDER BY Total_Salary DESC;

SELECT Education,
COUNT(Employee_ID) AS Employee_Count
FROM employee_data_clean
GROUP BY Education
ORDER BY Employee_Count DESC;

SELECT Job_Role,
COUNT(Employee_ID) AS Employee_Count
FROM employee_data_clean
GROUP BY Job_Role
ORDER BY Employee_Count DESC;
