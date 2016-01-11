json.array!(@medical_staffs) do |medical_staff|
  json.extract! medical_staff, :id, :rut_personal_medico, :primer_nombre, :segundo_nombre, :apellido_paterno, :apellido_materno, :sexo, :telefono_fijo, :telefono_movil
  json.url medical_staff_url(medical_staff, format: :json)
end
