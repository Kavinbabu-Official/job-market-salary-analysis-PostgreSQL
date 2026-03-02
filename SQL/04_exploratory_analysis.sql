--Top 50 jobs required more than 3 years experience:

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

--Salary range by job title:

SELECT
	i.job_title,
	MIN(i.salary_min_inr) AS minimum_salary,
	MAX(i.salary_max_inr) AS maximum_salary
FROM
	insight i
GROUP BY
	i.job_title
ORDER BY 
	maximum_salary
	DESC