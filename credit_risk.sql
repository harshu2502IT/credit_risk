select * from customer limit 10;
use credit_risk_db;

SELECT 
    COUNT(*) AS Total_Loans,
    SUM(target) AS Total_Defaults,
    ROUND(SUM(target) / COUNT(*) * 100, 2) AS Default_Rate_Pct
FROM
    credit_risk;


--
SELECT 
    grade,
    COUNT(*) AS Total_Loans,
    SUM(target) AS Defaults,
    ROUND(SUM(target) / COUNT(*) * 100, 2) AS Default_Rate_Pct,
    ROUND(AVG(int_rate), 2) AS Avg_Interest_Rate
FROM
    credit_risk
GROUP BY grade
ORDER BY Default_Rate_Pct DESC;


--
SELECT 
    home_ownership,
    COUNT(*) AS Total_Loans,
    SUM(target) AS Defaults,
    ROUND(SUM(target) / COUNT(*) * 100, 2) AS Default_Rate_Pct,
    ROUND(AVG(annual_inc), 2) AS Avg_Annual_Income
FROM
    credit_risk
GROUP BY home_ownership
ORDER BY Default_Rate_Pct DESC;


--
SELECT 
    purpose,
    COUNT(*) AS Total_Loans,
    SUM(target) AS Defaults,
    ROUND(SUM(target) / COUNT(*) * 100, 2) AS Default_Rate_Pct,
    ROUND(AVG(loan_amnt), 2) AS Avg_Loan_Amount
FROM
    credit_risk
GROUP BY purpose
ORDER BY Default_Rate_Pct DESC;


--
SELECT 
    emp_length,
    COUNT(*) AS Total_Loans,
    SUM(target) AS Defaults,
    ROUND(SUM(target) / COUNT(*) * 100, 2) AS Default_Rate_Pct,
    ROUND(AVG(annual_inc), 2) AS Avg_Income
FROM
    credit_risk
GROUP BY emp_length
ORDER BY emp_length;


--
SELECT 
    COUNT(*) AS High_Risk_Borrowers,
    SUM(target) AS Defaults,
    ROUND(SUM(target) / COUNT(*) * 100, 2) AS Default_Rate_Pct,
    ROUND(AVG(loan_amnt), 2) AS Avg_Loan_Amount,
    ROUND(AVG(annual_inc), 2) AS Avg_Income
FROM
    credit_risk
WHERE
    dti > 30;
    

--
SELECT 
    CASE 
        WHEN loan_amnt <= 5000  THEN '0-5K'
        WHEN loan_amnt <= 10000 THEN '5K-10K'
        WHEN loan_amnt <= 20000 THEN '10K-20K'
        WHEN loan_amnt <= 35000 THEN '20K-35K'
        ELSE '35K+'
    END AS Loan_Bucket,
    COUNT(*) AS Total_Loans,
    SUM(target) AS Defaults,
    ROUND(SUM(target) / COUNT(*) * 100, 2) AS Default_Rate_Pct
FROM credit_risk
GROUP BY Loan_Bucket
ORDER BY Default_Rate_Pct DESC;


--
SELECT 
    CASE 
        WHEN int_rate <= 8  THEN 'Low (<=8%)'
        WHEN int_rate <= 12 THEN 'Medium (8-12%)'
        WHEN int_rate <= 18 THEN 'High (12-18%)'
        ELSE 'Very High (>18%)'
    END AS Rate_Bucket,
    COUNT(*) AS Total_Loans,
    SUM(target) AS Defaults,
    ROUND(SUM(target) / COUNT(*) * 100, 2) AS Default_Rate_Pct
FROM credit_risk
GROUP BY Rate_Bucket
ORDER BY Default_Rate_Pct DESC;


--
SELECT 
    verification_status,
    COUNT(*) AS Total_Loans,
    SUM(target) AS Defaults,
    ROUND(SUM(target) / COUNT(*) * 100, 2) AS Default_Rate_Pct,
    ROUND(AVG(annual_inc), 2) AS Avg_Income
FROM credit_risk
GROUP BY verification_status
ORDER BY Default_Rate_Pct DESC;


--
SELECT 
    grade,
    purpose,
    home_ownership,
    COUNT(*) AS Total_Loans,
    ROUND(AVG(dti), 2) AS Avg_DTI,
    ROUND(AVG(int_rate), 2) AS Avg_Interest_Rate,
    ROUND(SUM(target) / COUNT(*) * 100, 2) AS Default_Rate_Pct
FROM credit_risk
GROUP BY grade, purpose, home_ownership
HAVING COUNT(*) > 100
ORDER BY Default_Rate_Pct DESC
LIMIT 10;