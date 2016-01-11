json.array!(@medical_staff_specialities) do |medical_staff_speciality|
  json.extract! medical_staff_speciality, :id, :speciality_id, :medical_staff_id
  json.url medical_staff_speciality_url(medical_staff_speciality, format: :json)
end
