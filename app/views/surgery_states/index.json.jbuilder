json.array!(@surgery_states) do |surgery_state|
  json.extract! surgery_state, :id, :nombre_estado
  json.url surgery_state_url(surgery_state, format: :json)
end
