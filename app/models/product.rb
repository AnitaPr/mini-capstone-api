class Product < ApplicationRecord
  validates :name, presence: true 
  validates :name, uniqueness: true
  validates :price, numericality: { greater_than: 0}
  validates :description, length: {in: 10..500}
  validates :description, presence: true 

  def is_discounted?
    if price < 10
    return true
    else  
    return false 
    end 
  end 

  def tax
    tax = price.to_i * 0.09
    return "Product tax is #{tax}"
  end

  def total 
    price + tax
  end




end
