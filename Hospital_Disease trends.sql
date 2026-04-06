use healtcare;

select * from disease_trend;

-- How do total disease cases change over time?

SELECT year, month, COUNT(DISTINCT patient_id) AS total_cases
FROM disease_trend
GROUP BY year, month
ORDER BY year, month;

-- How does each disease trend over time?

SELECT year, month, disease_name,
COUNT(DISTINCT patient_id) AS cases
FROM disease_trend
GROUP BY year, month, disease_name;


-- Which diseases have highest cases?

SELECT disease_name,
COUNT(DISTINCT patient_id) AS total_cases
FROM disease_trend
GROUP BY disease_name
ORDER BY total_cases DESC
LIMIT 10;


-- Which diseases dominate each year 

SELECT year, disease_name,
COUNT(DISTINCT patient_id) AS cases
FROM disease_trend
GROUP BY year, disease_name;

-- Which diseases are seasonal?

SELECT season, disease_name,
COUNT(DISTINCT patient_id) AS cases
FROM disease_trend
GROUP BY season, disease_name
ORDER BY season, cases DESC;


-- Which month has highest cases

SELECT month,
COUNT(DISTINCT patient_id) AS cases
FROM disease_trend
GROUP BY month
ORDER BY cases DESC;


-- Yearly Growth Trend 

SELECT year,
COUNT(DISTINCT patient_id) AS total_cases
FROM disease_trend
GROUP BY year
ORDER BY year;


-- Disease Trend by Hospital Type

SELECT year, hospital_type,
COUNT(DISTINCT patient_id) AS cases
FROM disease_trend
GROUP BY year, hospital_type;


-- Disease Trend by Age Group

SELECT age_group,
COUNT(DISTINCT patient_id) AS cases
FROM disease_trend
GROUP BY age_group
ORDER BY cases DESC;


-- Gender-Based Disease Trend

SELECT gender,
COUNT(DISTINCT patient_id) AS cases
FROM disease_trend
GROUP BY gender;


-- State-wise Disease Trend

SELECT state,
COUNT(DISTINCT patient_id) AS cases
FROM disease_trend
GROUP BY state
ORDER BY cases DESC;

-- City-wise Top Diseases

SELECT city, disease_name,
COUNT(DISTINCT patient_id) AS cases
FROM disease_trend
GROUP BY city, disease_name;


-- Which disease is increasing most

SELECT disease_name, year,
COUNT(DISTINCT patient_id) AS cases
FROM disease_trend
GROUP BY disease_name, year;

-- Insurance Impact on Disease Cases

SELECT insurance_status,
COUNT(DISTINCT patient_id) AS cases
FROM disease_trend
GROUP BY insurance_status;

-- Monthly Trend per Disease

SELECT 
    year,
    month,
    disease_name,
    COUNT(DISTINCT patient_id) AS cases
FROM disease_trend
GROUP BY year, month, disease_name
ORDER BY year, month;































