json.extract! pump, :id, :day_id, :pump_time, :pump_amount, :notes, :created_at, :updated_at
json.url pump_url(pump, format: :json)