SELECT COUNT(*) AS TotalEmployees
FROM employee_attrition;
SELECT Attrition, COUNT(*) AS EmployeeCount FROM employee_attrition GROUP BY Attrition;
SELECT
ROUND(
SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 
END) * 100.0
/ COUNT(*),2
) AS AttritionRate
FROM employee_attrition;
SELECT 
Department,
COUNT(*) AS AttritionCount
FROM employee_attrition
WHERE Attrition = 'Yes'
GROUP BY Department
ORDER BY AttritionCount DESC;
SELECT
Jobrole,
COUNT(*) AS AttritionCount
FROM employee_attrition
WHERE Attrition = 'Yes'
GROUP BY JobRole
ORDER BY Attritioncount DESC;
SELECT
Overtime,
COUNT(*) AS AttritionCount
FROM employee_attrition
WHERE Attrition = 'Yes'
GROUP BY Overtime;
SELECT
CASE
    WHEN Age < 30 THEN 'Under 30'
    WHEN Age BETWEEN 30 AND 40 THEN '30-40'
    ELSE '40+'
    END AS AgeGroup,
    COUNT(*) AS AttritionCount
    FROM employee_attrition
    WHERE Attrition = 'Yes'
    GROUP BY AgeGroup;
    SHOW COLUMNS FROM employee_attrition;
  SELECT
  EducationField,
  COUNT(*) AS AttritionCount
  FROM employee_attrition
  WHERE Attrition = 'Yes'
  GROUP BY EducationField
  ORDER BY AttritionCount DESC;
    SELECT
    Department,
    ROUND(AVG(MonthlyIncome),2) AS AvgMonthlyIncome
    FROM employee_attrition
    GROUP BY Department
    ORDER BY  AvgMonthlyIncome DESC;
    SELECT
    JobSatisfaction,
    COUNT(*) AS AttritionCount
    FROM employee_attrition
    WHERE Attrition = 'Yes'
    Group BY JobSatisfaction
    Order BY JobSatisfaction;
    SELECT
    WorkLifeBalance,
    COUNT(*) AS AttritionCount
    FROM employee_attrition
    WHERE Attrition = 'Yes'
    GROUP BY WorkLifeBalance
    ORDER BY WorkLifeBalance;
    