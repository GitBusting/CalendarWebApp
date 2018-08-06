json.extract! appointment, :id, :name, :start_time, :created_at, :updated_at, :period
json.url appointment_url(appointment, format: :json)
