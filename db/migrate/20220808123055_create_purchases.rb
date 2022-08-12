class CreatePurchases < ActiveRecord::Migration[7.0]
  def change
    create_table :purchases do |t|
      t.string :name
      t.integer :amount, default: 0
      t.references :author, foreign_key: { to_table: 'users' }
      t.references :group, foreign_key: { to_table: 'groups' }

      t.timestamps
    end
  end
end
