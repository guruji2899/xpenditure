class CreateCreditors < ActiveRecord::Migration
  def change
    create_table :creditors do |t|
      t.string :name
      t.float :amount
      t.text :description
      t.integer :user_id

      t.timestamps
    end
  end
end
