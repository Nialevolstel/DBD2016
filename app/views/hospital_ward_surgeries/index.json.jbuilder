json.array!(@hospital_ward_surgeries) do |hospital_ward_surgery|
  json.extract! hospital_ward_surgery, :id, :hospital_ward_id, :surgery_id, :fecha_inicio, :hora_inicio, :fecha_fin, :hora_fin
  json.url hospital_ward_surgery_url(hospital_ward_surgery, format: :json)
end
