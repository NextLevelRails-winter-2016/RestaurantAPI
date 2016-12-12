class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :quantity
      t.references :item, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
