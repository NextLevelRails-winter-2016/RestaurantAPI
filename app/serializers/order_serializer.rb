class OrderSerializer < ActiveModel::Serializer
  attributes :id, :item_id, :quantity
end
