class CreateDebts < ActiveRecord::Migration
  def change
    create_table :debts do |t|
      t.date :date
      t.float :amount
      t.text :description
      t.integer :debtor_id

      t.timestamps
    end
  end
end
