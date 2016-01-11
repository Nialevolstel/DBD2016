json.array!(@instruments) do |instrument|
  json.extract! instrument, :id, :instrument_type_id, :hospital_ward_id
  json.url instrument_url(instrument, format: :json)
end
