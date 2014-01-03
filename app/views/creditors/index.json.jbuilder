json.array!(@creditors) do |creditor|
  json.extract! creditor, :id, :name, :amount, :description
  json.url creditor_url(creditor, format: :json)
end
