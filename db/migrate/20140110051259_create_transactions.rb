class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.date :tran_date
      t.float :amount
      t.string :type
      t.text :description
      t.integer :account_id

      t.timestamps
    end
  end
end
