json.array!(@incomes) do |income|
  json.extract! income, :id, :date, :amount, :description
  json.url income_url(income, format: :json)
end
