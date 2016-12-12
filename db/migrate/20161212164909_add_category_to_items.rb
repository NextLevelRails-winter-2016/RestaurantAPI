class AddCategoryToItems < ActiveRecord::Migration
  def change
    add_column :items, :menu_category, :string
  end
end
