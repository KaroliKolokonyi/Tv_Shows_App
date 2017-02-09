class Product < ApplicationRecord
belongs_to :supplier 
has_many :orders, through: :carted_products
has_many :images
has_many :carted_products
has_many :category_products
has_many :categories, through: :category_products

  

  def tax
    tax = (price * 9)/100
  end
  
end
