SELECT 
	job_title,
	company_name,
	location,
	salary_max_inr
FROM (
SELECT
	i.job_title,
	i.company_name,
	i.location,
	i.salary_max_inr,
ROW_NUMBER() OVER(
	PARTITION BY i.job_title 
	ORDER BY i.salary_max_inr DESC
) AS jobs_rank
FROM
	insight i
) t 
WHERE 
	jobs_rank = 1;