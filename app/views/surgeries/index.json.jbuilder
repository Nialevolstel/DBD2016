json.array!(@surgeries) do |surgery|
  json.extract! surgery, :id, :surgery_type_id, :user_id, :patient_id, :surgery_state_id, :medical_team_id
  json.url surgery_url(surgery, format: :json)
end
