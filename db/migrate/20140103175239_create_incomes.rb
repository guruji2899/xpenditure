class CreateIncomes < ActiveRecord::Migration
  def change
    create_table :incomes do |t|
      t.date :date
      t.float :amount
      t.text :description
      t.integer :user_id

      t.timestamps
    end
  end
end
