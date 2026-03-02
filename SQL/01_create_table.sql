CREATE TABLE insight (
job_id INT PRIMARY KEY,
job_title VARCHAR(50),
company_name VARCHAR(50),
location VARCHAR(50),
experience_required_years INT,
skills VARCHAR(100),
salary_min_inr DECIMAL(10,2),
salary_max_inr DECIMAL(10,2),
employment_type VARCHAR(50),
remote_option VARCHAR(50)
);