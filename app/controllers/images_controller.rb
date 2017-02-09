class ImagesController < ApplicationController

def index
    @images = Image.all
  end

  def new
    @products = Product.all
  end

  def create

    image = Image.new(url: params[:url],product_id: params[:product_id])
    
    image.save

  end

  def show
    @image = Image.find_by(id:params[:id])
  end


end
