json.array!(@debts) do |debt|
  json.extract! debt, :id, :date, :amount, :description
  json.url debt_url(debt, format: :json)
end
