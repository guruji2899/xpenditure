class Debtor < ActiveRecord::Base
  belongs_to :user
  has_many :debts
end
