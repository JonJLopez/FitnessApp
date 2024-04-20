json.extract! weight_tracker, :id, :exercise, :weight, :reps, :user_id, :created_at, :updated_at
json.url weight_tracker_url(weight_tracker, format: :json)
