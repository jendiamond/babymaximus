json.extract! feeding, :id, :day_id, :feeding_time, :left, :right, :minutes, :feeding_type, :feeding_amount, :notes, :created_at, :updated_at
json.url feeding_url(feeding, format: :json)