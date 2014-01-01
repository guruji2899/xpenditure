json.array!(@expenses) do |expense|
  json.extract! expense, :id, :amount, :description, :category_id
  json.url expense_url(expense, format: :json)
end
