json.extract! job, :id, :fecha, :client_id, :stock_id, :cantidad, :precio, :total, :created_at, :updated_at
json.url job_url(job, format: :json)
