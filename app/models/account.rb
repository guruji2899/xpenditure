class Account < ActiveRecord::Base
  belongs_to :user
  has_many :transactions, :order => "tran_date DESC" do
    def debt_trans
      where(:type => "Debt")
    end
    def credit_trans
      where(:type => "Credit")
    end
  end

  def balance
    transactions.credit_trans.sum(:amount) - transactions.debt_trans.sum(:amount)
  end

  
end
