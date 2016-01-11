json.array!(@patients) do |patient|
  json.extract! patient, :id, :rut_paciente, :primer_nombre, :segundo_nombre, :apellido_paterno, :apellido_materno, :fecha_nacimiento, :sexo, :telefono_fijo, :telefono_movil
  json.url patient_url(patient, format: :json)
end
