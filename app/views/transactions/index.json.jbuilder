json.array!(@transactions) do |transaction|
  json.extract! transaction, :id, :tran_date, :amount, :type, :description, :account_id
  json.url transaction_url(transaction, format: :json)
end
