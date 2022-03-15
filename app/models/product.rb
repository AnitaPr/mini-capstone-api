class Product < ApplicationRecord
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
