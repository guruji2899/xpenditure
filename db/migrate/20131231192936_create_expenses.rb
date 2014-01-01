class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.float :amount
      t.text :description
      t.integer :category_id
      t.integer :user_id

      t.timestamps
    end
  end
end
