json.array!(@supplies) do |supply|
  json.extract! supply, :id, :nombre_insumo, :stock_insumo, :costo_insumo, :article_clasification_id
  json.url supply_url(supply, format: :json)
end
