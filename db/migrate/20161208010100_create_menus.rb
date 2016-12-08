class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.string :appetizers
      t.string :drinks
      t.string :entrees

      t.timestamps null: false
    end
  end
end
