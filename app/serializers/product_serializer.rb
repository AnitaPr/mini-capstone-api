class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :description, :items, :supplier_id
end
