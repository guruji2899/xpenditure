class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
  has_many :expenses,  :order => "date DESC"
  has_many :debtors
  has_many :creditors
  has_many :incomes
  has_many :accounts

  def accounts_sum
    sum = 0.0
    accounts.each{|acc| sum = sum + acc.balance.try(:to_f) }
    return sum
  end
end
