class ProductSerializer < ActiveModel::Serializer
attributes :id, :name, :price, :description, :items, :is_discounted?, :tax, :total, :supplier_id

belongs_to :supplier
has_many :images

end
