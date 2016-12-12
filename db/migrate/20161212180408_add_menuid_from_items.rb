class AddMenuidFromItems < ActiveRecord::Migration
  def change
    add_reference :items, :menu, index: true, foreign_key: true
  end
end
