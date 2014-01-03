class AddDateFields < ActiveRecord::Migration
  def change
    add_column :debtors, :date, :date
    add_column :creditors, :date, :date
    add_column :expenses, :date, :date
  end
end
