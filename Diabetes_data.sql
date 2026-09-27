select*
FROM laboratory_data;

SELECT * 
FROM laboratory_data
LIMIT 10;

SELECT
    Class,
    COUNT(*) AS patient_count
FROM laboratory_data
GROUP BY Class
ORDER BY patient_count DESC;

SELECT
   BMI Status,
   COUNT(*) AS patient_count
   FROM laboratory_data
   GROUP BY BMI 
   ORDER BY patient_count DESC;
   
   SELECT
    Gender,
    COUNT(*) AS patient_count
FROM laboratory_data
GROUP BY Gender;

SELECT
    Gender,
    Class,
    COUNT(*) AS patient_count
FROM laboratory_data
GROUP BY Gender, Class
ORDER BY Gender, Class;

SELECT
    Class,
    ROUND(AVG(HBA1C), 2) AS avg_hba1c
FROM laboratory_data
GROUP BY Class;

SELECT
    Class,
    ROUND(AVG(BMI), 2) AS avg_bmi
FROM laboratory_data
GROUP BY Class;

 
SELECT
    Class,
   
    ROUND(AVG(BMI),2) AS Avg_BMI,
    ROUND(AVG(Urea),2) AS Avg_Urea,
    ROUND(AVG(Chol),2) AS Avg_Cholesterol,
    ROUND(AVG(LDL),2) AS Avg_LDL,
    ROUND(AVG(VLDL),2) AS Avg_VLDL,
    ROUND(AVG(TG),2) AS Avg_TG,
    ROUND(AVG(HDL),2) AS Avg_HDL,
    ROUND(AVG(HBA1C),2) AS Avg_HBA1C
FROM laboratory_data
GROUP BY Class;

SELECT *
FROM laboratory_data
WHERE HBA1C > 6.5
   OR BMI >= 30;