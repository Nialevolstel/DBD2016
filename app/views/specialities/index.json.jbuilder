json.array!(@specialities) do |speciality|
  json.extract! speciality, :id, :nombre_especialidad
  json.url speciality_url(speciality, format: :json)
end
