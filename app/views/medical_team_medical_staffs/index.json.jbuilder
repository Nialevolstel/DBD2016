json.array!(@medical_team_medical_staffs) do |medical_team_medical_staff|
  json.extract! medical_team_medical_staff, :id, :medical_team_id, :medical_staff_id, :speciality_id
  json.url medical_team_medical_staff_url(medical_team_medical_staff, format: :json)
end
