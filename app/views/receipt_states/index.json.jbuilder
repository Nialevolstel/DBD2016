json.array!(@receipt_states) do |receipt_state|
  json.extract! receipt_state, :id, :nombre_stado
  json.url receipt_state_url(receipt_state, format: :json)
end
