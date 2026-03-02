SELECT 
	i.job_id,
	i.job_title,
	i.company_name,
	i.location,
	i.experience_required_years,
	i.salary_max_inr
FROM insight i
WHERE
	i.experience_required_years > 3
ORDER BY
	i.experience_required_years 
	DESC,
	i.job_id ASC
LIMIT 50