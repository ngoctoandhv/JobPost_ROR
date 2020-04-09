json.extract! post_job, :id, :post_priority, :salary_min, :salary_max, :post_title, :job_description, :job_expried_date, :created_at, :updated_at
json.url post_job_url(post_job, format: :json)
