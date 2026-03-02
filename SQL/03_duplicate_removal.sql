
DELETE FROM insight i
WHERE i.job_id IN (
SELECT i.job_id FROM(
SELECT  i.job_id,
ROW_NUMBER() OVER(PARTITION BY
		i.job_title,
		i.company_name,
		i.location,
		i.experience_required_years,
		i.skills,
		i.salary_min_inr,
		i.salary_max_inr,
		i.employment_type,
		i.remote_option 
ORDER BY i.job_id ) AS rn
FROM insight i ) t
WHERE rn > 1

);
