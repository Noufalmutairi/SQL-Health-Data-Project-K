# Key Data of Hospitals: Analysis using SQL


## Queries Overview

### Average Billing Amount for each Admission type and Medical Condition
- Computes the average billing amount for each admission type and medical condition.
- Utilizes SQL aggregation function (`AVG`), `GROUP BY` clause, and `ORDER BY` clause for comprehensive analysis.

### Average Billing Amount and Length of Stay for each Medical Condition
- Calculates the average billing amount and length of stay for each medical condition.
- Demonstrates usage of SQL aggregation functions (`AVG`) and date functions (`DATEDIFF`) for insightful analysis.

### Overview of Patients for each Medical Condition
- Provides an overview of patients including total count, gender distribution, average age, and average length of stay for each medical condition.
- Utilizes `COUNT`, `AVG`, `GROUP BY`, and string concatenation for comprehensive patient analysis.

### Doctor with the Highest Discharge Success Rate
- Identifies the doctor with the highest success rate in terms of patients discharged within a specific time frame.
- Utilizes conditional filtering (`WHERE` clause) and aggregation function (`COUNT`) for analyzing doctor performance.

### Length of Stay Patterns Over Time
- Explores length of stay patterns over time by calculating the average length of stay for each admission month.
- Utilizes date functions (`MONTHNAME`, `DATEDIFF`), aggregation function (`AVG`), and grouping by admission month.

### Average Billing Amount for each Admission Type and Medical Condition
- Computes the average billing amount for each admission type and medical condition, formatted with currency symbol.
- Demonstrates SQL aggregation function (`AVG`), grouping by multiple columns, and formatting output.

### Average Claim Processing Time for Each Insurance Provider
- Calculates the average claim processing time for each insurance provider.
- Utilizes date functions (`DATEDIFF`), conditional filtering (`WHERE` clause), and aggregation function (`AVG`) for insurance provider analysis.

### Identifying Common Medications and Test Results by Medical Condition
- Identifies common medications and test results by medical condition.
- Utilizes subqueries, `COUNT`, and window function (`ROW_NUMBER`) for identifying most common medications and test results.

### Number of Medications for each Medical Condition
- Calculates the number of medications for each medical condition.
- Utilizes `COUNT` and `GROUP BY` clauses for medication count analysis.

### Average Length of Stay for each Insurance Provider and Medical Condition
- Calculates the average length of stay for each insurance provider and medical condition.
- Utilizes SQL aggregation functions (`AVG`), grouping by multiple columns, and conditional filtering for detailed analysis.

### Analyzing Long Stay Patients by Age Group
- Analyzes long stay patients by age group, categorizing them into different age ranges.
- Utilizes conditional logic with `CASE` statement, `COUNT`, and `GROUP BY` for age group analysis.

### Hospital Performance: Average Length of Stay and Billing Amount
- Provides an overview of hospital performance by calculating the average length of stay and billing amount for each hospital.
- Utilizes subquery, aggregation functions (`AVG`), and grouping by hospital for performance analysis.

### Invoice Analysis
- Analyzes billing amounts and categorizes them into different billing categories.
- Utilizes conditional logic with `CASE` statement, `COUNT`, and `GROUP BY` for billing analysis.

### Age Group Distribution in Dataset
- Analyzes the age group distribution in the dataset, categorizing patients into different age ranges.
- Utilizes conditional logic with `CASE` statement, `COUNT`, and `GROUP BY` for age group distribution analysis.

### Average Length of Hospital Stay by Medical Condition
- Calculates the average length of hospital stay for each medical condition.
- Utilizes SQL aggregation function (`AVG`) and `GROUP BY` clause for medical condition analysis.

### Billing Amount Variation Based on Medical Condition or Admission Type
- Analyzes the variation in billing amounts based on medical condition or admission type.
- Utilizes SQL aggregation function (`AVG`), `GROUP BY` clause, and conditional logic for billing analysis.

### Overview About Patients Based on Medical Condition
- Provides an overview of patients based on medical condition, including total count, gender distribution, average age, and average length of stay.
- Utilizes `COUNT`, `AVG`, `GROUP BY`, and string concatenation for comprehensive patient analysis.


## Dataset
You can access the dataset [here](https://www.kaggle.com/datasets/prasad22/healthcare-dataset).


## Additional Resources
- Read the article for a deeper understanding: [Key Data of Hospitals: Analysis using SQL](https://www.linkedin.com/pulse/key-data-hospitals-analysis-using-sql-nouf-almutairi-tyehe/)
## Contact Information
feel free to contact [Nouf Almutairi](https://www.linkedin.com/in/nouf-almutairi-5671132a2/) on LinkedIn.
