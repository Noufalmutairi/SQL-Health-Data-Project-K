-- What is Average Billing Amount for each Admission type and medical condition? --
SELECT 
    Medical_Condition,
    Admission_Type,
    ROUND(AVG(Billing_Amount), 0) `Average_BillingAmount`
FROM
    h_dataset
GROUP BY Medical_Condition,Admission_Type
ORDER BY Admission_Type DESC;


-- What is Average Billing Amount, Length of Stay for each medical condition?--
SELECT 
    Medical_Condition,
    ROUND(AVG(Billing_Amount), 0) AS AverageBillingAmount,
    ABS(ROUND(AVG(DATEDIFF(Discharge_Date, Admission_Date)), 0)) `Average Length Of Stay`
FROM
   h_dataset
GROUP BY Medical_Condition;


-- Overview of Patients (age, gender, legth of stay) for each Medical Condition -- 
SELECT 
    Medical_Condition,
    COUNT(*) `Total Patients`,
    Gender,
    ROUND(AVG(Age), 0) `Average Age`,
    ABS(ROUND(AVG(DATEDIFF(Discharge_Date, Admission_Date)),
                    0)) `Average Length Of Stay`
FROM
    h_dataset
GROUP BY Medical_Condition , Gender;


-- Which doctor has the highest success rate in terms of patients discharge within a specific time frame? --
SELECT 
    Doctor, COUNT(*) AS DischargedPatients
FROM
    h_dataset
WHERE
    Discharge_Date IS NOT NULL
GROUP BY Doctor
ORDER BY DischargedPatients DESC
LIMIT 1;


-- Explore Length of Stay Patterns Over Time --

SELECT 
    MONTHNAME(Admission_Date) `Admission Month`,
    ABS(ROUND(AVG(DATEDIFF(Discharge_Date, Admission_Date)), 0)) `Average Length of Stay`
FROM
    h_dataset
GROUP BY `Admission Month`
ORDER BY `Admission Month`;


-- AVG Billing Amount for each admission Type and medical condition --
SELECT 
    Medical_Condition,
    Admission_Type,
    CONCAT('$',
            FORMAT(ROUND(AVG(Billing_Amount), 0),
                'N0')) `Average Billing Amount`
FROM
    h_dataset
GROUP BY Admission_Type , Medical_Condition;


-- What is Average time processing for each insurance provider? --
SELECT 
    Insurance_Provider,
    AVG(DATEDIFF(Discharge_Date, Admission_Date)) AS AverageClaimProcessingTime
FROM
    h_dataset
WHERE
    Discharge_Date IS NOT NULL
GROUP BY  Insurance_Provider;

-- Identifying Common Medications and Test Results by Medical Condition --
SELECT 
    Medical_Condition,
    subquery.Medication AS "Common Medication",
    subquery.Test_Results AS "Test Result",
    subquery.Occurances
FROM
    (SELECT 
        Medical_Condition,
        Medication,
        Test_Results,
        COUNT(*) AS Occurances,
        ROW_NUMBER() OVER (PARTITION BY Medical_Condition ORDER BY COUNT(*) DESC) AS RowNum
    FROM 
        h_dataset
    WHERE 
        Medical_Condition IS NOT NULL 
        AND Medication IS NOT NULL 
        AND Test_Results IS NOT NULL 
    GROUP BY 
        Medical_Condition, Medication, Test_Results) AS subquery
WHERE 
    RowNum = 1;


-- Number of Medication for each Medical condition --
SELECT 
    Medical_Condition, Medication, COUNT(*) AS MedicationCount
FROM
    h_dataset
GROUP BY Medical_Condition , Medication
ORDER BY MedicationCount DESC;


-- Average Length Of Stay for each Insurance Provider --
SELECT 
    Insurance_Provider,
    Medical_Condition,
    AVG(DATEDIFF(Discharge_Date, Admission_Date)) AS AverageLengthOfStay
FROM
    h_dataset
GROUP BY Insurance_Provider , Medical_Condition;


-- Analyzing Long Stay Patients by Age Group --
SELECT 
    CASE
        WHEN Age < 18 THEN 'Under 18'
        WHEN Age >= 18 AND Age < 30 THEN '18-29'
        WHEN Age >= 30 AND Age < 45 THEN '30-44'
        WHEN Age >= 45 AND Age < 60 THEN '45-59'
        ELSE '60 and over'
    END AS AgeGroup,
    COUNT(*) AS LongStayPatients
FROM
    h_dataset
WHERE
    DATEDIFF(Discharge_Date, Admission_Date) > 14
GROUP BY AgeGroup;



-- Assessing Hospital Performance: Average Length of Stay and Billing Amount --
SELECT 
   Hospital,
    ROUND(AVG(LENGTHOFSTAY), 0) AS AvgLengthOfStay,
    CONCAT(ROUND(AVG(Billing_Amount), 0), '$') AS AvgBillingAmount
FROM
    (SELECT 
        Hospital,
            ROUND(DATEDIFF(Discharge_Date, Admission_Date), 0) AS LENGTHOFSTAY,
            Billing_Amount
    FROM
        h_dataset) AS subquery
GROUP BY Hospital
ORDER BY AvgBillingAmount;


-- Invoice Analysis --

SELECT 
    CASE
        WHEN Billing_Amount < 1000 THEN 'Low'
        WHEN
            Billing_Amount >= 1000
                AND Billing_Amount < 5000
        THEN
            'Medium'
        WHEN
            Billing_Amount >= 5000
                AND Billing_Amount < 10000
        THEN
            'High'
        WHEN
            Billing_Amount >= 10000
                AND Billing_Amount < 20000
        THEN
            'Very High'
        ELSE 'Extremely High'
    END AS BillingCategory,
    COUNT(*) AS billing_Count
FROM
    h_dataset
GROUP BY BillingCategory;


-- Age Group Distribution in Dataset --

SELECT 
    CASE
        WHEN Age < 25 THEN '18-24'
        WHEN Age >= 25 AND Age < 35 THEN '25-34'
        WHEN Age >= 35 AND Age < 45 THEN '35-44'
        WHEN Age >= 45 AND Age < 55 THEN '45-54'
        WHEN Age >= 55 AND Age < 65 THEN '55-64'
        ELSE '65+'
    END AS AgeGroup,
    COUNT(*) AS GroupCount
FROM
    h_dataset
GROUP BY AgeGroup
ORDER BY MIN(Age);


-- How does the average length of hospital stay vary based on medical condition? 
SELECT 
    Medical_Condition,
    AVG(DATEDIFF(Discharge_Date, Admission_Date)) AS AverageLengthOfStay
FROM
    h_dataset
GROUP BY Medical_Condition; 

  
 -- How does the billing amount differ based on medical condition or admission type? 
SELECT 
    Medical_Condition,
    Admission_Type,
    ROUND(AVG(Billing_Amount),0) AS AverageBillingAmount
FROM
    h_dataset
GROUP BY Medical_Condition , Admission_TypE;


-- Overview About Patients Based on Medical_Condition --
SELECT 
    Medical_Condition,
    COUNT(*) `Total Patients`,
    Gender,
    CONCAT(ROUND(AVG(Age), 0), ' y') `Average Age`,
    CONCAT(ABS(ROUND(AVG(DATEDIFF(Discharge_Date, Admission_Date)),
                            0)),
            ' days') `Average Length Of Stay`
FROM
    h_dataset
GROUP BY Medical_Condition , Gender;
