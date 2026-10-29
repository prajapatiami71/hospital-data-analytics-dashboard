-- Hospital Analytics Dashboard | SQL analysis (MySQL / PostgreSQL compatible)
CREATE TABLE hospital_data (
  record_id INT PRIMARY KEY, patient_id VARCHAR(10), patient_name VARCHAR(60), age INT, gender VARCHAR(10),
  blood_group VARCHAR(4), department VARCHAR(40), doctor_name VARCHAR(30), admission_date DATE, discharge_date DATE,
  diagnosis VARCHAR(40), room_type VARCHAR(20), bill_amount_inr DECIMAL(12,2), payment_status VARCHAR(20), city VARCHAR(30),
  length_of_stay INT, admission_year INT, admission_month INT, age_group VARCHAR(10));
-- Load hospital_data_processed.csv into this table (e.g. LOAD DATA INFILE / COPY / Import Wizard)

-- 1. Headline KPIs
SELECT COUNT(*) AS total_patients, SUM(bill_amount_inr) AS total_revenue, AVG(bill_amount_inr) AS avg_bill, AVG(length_of_stay) AS avg_stay FROM hospital_data;
-- 2. Revenue by department
SELECT department, COUNT(*) AS patients, SUM(bill_amount_inr) AS revenue FROM hospital_data GROUP BY department ORDER BY revenue DESC;
-- 3. Payment status share
SELECT payment_status, COUNT(*) AS bills, ROUND(100.0*COUNT(*)/(SELECT COUNT(*) FROM hospital_data),1) AS pct, SUM(bill_amount_inr) AS amount FROM hospital_data GROUP BY payment_status;
-- 4. Monthly admissions & revenue
SELECT admission_year, admission_month, COUNT(*) AS admissions, SUM(bill_amount_inr) AS revenue FROM hospital_data GROUP BY admission_year, admission_month ORDER BY 1,2;
-- 5. Top 10 cities by revenue
SELECT city, SUM(bill_amount_inr) AS revenue FROM hospital_data GROUP BY city ORDER BY revenue DESC LIMIT 10;
-- 6. Top 10 diagnoses
SELECT diagnosis, COUNT(*) AS cases FROM hospital_data GROUP BY diagnosis ORDER BY cases DESC LIMIT 10;
-- 7. Average bill and stay by room type
SELECT room_type, AVG(bill_amount_inr) AS avg_bill, AVG(length_of_stay) AS avg_stay FROM hospital_data GROUP BY room_type;
-- 8. Doctor workload
SELECT doctor_name, COUNT(*) AS patients FROM hospital_data GROUP BY doctor_name ORDER BY patients DESC;
-- 9. Age-group profile
SELECT age_group, COUNT(*) AS patients, AVG(bill_amount_inr) AS avg_bill FROM hospital_data GROUP BY age_group ORDER BY age_group;
