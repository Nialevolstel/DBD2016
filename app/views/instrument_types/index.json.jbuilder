json.array!(@instrument_types) do |instrument_type|
  json.extract! instrument_type, :id, :article_clasification_id, :nombre_instrumentaria, :descripcion_instrumentaria, :precio_por_hora
  json.url instrument_type_url(instrument_type, format: :json)
end
