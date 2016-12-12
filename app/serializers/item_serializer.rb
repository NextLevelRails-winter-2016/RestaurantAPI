class ItemSerializer < ActiveModel::Serializer
  attributes :id, :menu_category, :name, :price
end
