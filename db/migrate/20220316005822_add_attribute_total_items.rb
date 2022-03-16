class AddAttributeTotalItems < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :items, :integer
  end
end
