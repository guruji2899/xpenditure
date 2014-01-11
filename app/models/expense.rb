class Expense < ActiveRecord::Base
 belongs_to :user
 belongs_to :category

 scope :created_between, lambda {|start_date, end_date| where("date >= ? AND date <= ?", start_date, end_date )}

 def self.current_month
   created_between(Time.now.beginning_of_month, Time.now.end_of_month).sum(:amount)
 end
end
