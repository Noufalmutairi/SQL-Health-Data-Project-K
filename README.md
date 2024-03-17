# Key Data of Hospitals: Analysis using SQL

## Overview
Analyzing a healthcare dataset to gain insights into patient profiles, treatment outcomes, finances, and diagnostics.

## Dataset
- **Source:** [Here](https://www.kaggle.com/datasets/prasad22/healthcare-dataset)

## Technologies Used
- MySQL


## Queries Overview


### Length of Stay Patterns Over Time
- Explores length of stay patterns over time by calculating the average length of stay for each admission month.
- Utilizes date functions (`MONTHNAME`, `DATEDIFF`), aggregation function (`AVG`), and grouping by admission month.


### Identifying Common Medications and Test Results by Medical Condition
- Identifies common medications and test results by medical condition.
- Utilizes subqueries, `COUNT`, and window function (`ROW_NUMBER`) for identifying most common medications and test results.


### Invoice Analysis
- Analyzes billing amounts and categorizes them into different billing categories.
- Utilizes conditional logic with `CASE` statement, `COUNT`, and `GROUP BY` for billing analysis.




## Additional Resources
- Read the article for a deeper understanding: [Key Data of Hospitals: Analysis using SQL](https://www.linkedin.com/pulse/key-data-hospitals-analysis-using-sql-nouf-almutairi-tyehe/)
## Contact Information
feel free to contact [Nouf Almutairi](https://www.linkedin.com/in/nouf-almutairi-5671132a2/) 
