json.array!(@debtors) do |debtor|
  json.extract! debtor, :id, :name, :amount, :description
  json.url debtor_url(debtor, format: :json)
end
