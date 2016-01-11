json.array!(@hospital_wards) do |hospital_ward|
  json.extract! hospital_ward, :id, :numero_sala
  json.url hospital_ward_url(hospital_ward, format: :json)
end
