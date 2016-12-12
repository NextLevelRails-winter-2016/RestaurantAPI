class RemoveMenuCategoryFromItems < ActiveRecord::Migration
  def change
    remove_column :items, :menu_category, :string
  end
end
