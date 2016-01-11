json.array!(@surgery_types) do |surgery_type|
  json.extract! surgery_type, :id, :nombre_cirugia
  json.url surgery_type_url(surgery_type, format: :json)
end
