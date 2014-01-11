class Transaction < ActiveRecord::Base
  belongs_to :account

  TRANS_TYPE = ["Credit", "Debt"]
end
