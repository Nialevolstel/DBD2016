json.array!(@surgery_type_instrument_types) do |surgery_type_instrument_type|
  json.extract! surgery_type_instrument_type, :id, :surgery_type_id, :instrument_type_id
  json.url surgery_type_instrument_type_url(surgery_type_instrument_type, format: :json)
end
