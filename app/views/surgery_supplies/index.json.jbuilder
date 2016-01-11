json.array!(@surgery_supplies) do |surgery_supply|
  json.extract! surgery_supply, :id, :surgery_id, :supply_id, :cantidad_utilizada
  json.url surgery_supply_url(surgery_supply, format: :json)
end
