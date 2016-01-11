json.array!(@receipts) do |receipt|
  json.extract! receipt, :id, :surgery_id, :monto_total, :receipt_state_id
  json.url receipt_url(receipt, format: :json)
end
