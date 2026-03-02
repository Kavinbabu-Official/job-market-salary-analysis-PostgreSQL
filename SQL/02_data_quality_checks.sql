-- Total Records:

SELECT 'Total Jobs' AS metric,
	COUNT(*) AS total_job
FROM
	insight;

-- Missing Values Check:

SELECT
	COUNT(*) AS incomplete_records
FROM insight i 
WHERE 
	i.job_id IS NULL OR
	i.job_title IS NULL OR
	i.company_name IS NULL OR
	i.location IS NULL OR
	i.experience_required_years IS NULL OR
	i.skills IS NULL OR
	i.salary_min_inr IS NULL OR
	i.salary_max_inr IS NULL OR
	i.employment_type IS NULL OR

	i.remote_option IS NULL;
