class ProductsController < ApplicationController

  def index 
    @products = Product.all 

    render "tv_shows.html.erb"
  
  end 

   def show 
    @product = Product.find_by(id: params[:id])

    end 

    def new 

    end 

   def create
   name = params[:name]
   show_genre = params[:show_genre]
   image = params[:image]
   production_year = params[:production_year]
   production_film_company = params[:production_film_company]

   product = Product.new({name: name, show_genre: show_genre, image: image, production_year: production_year, production_film_company: production_film_company})

   product.save 
  flash[:success] = "TV Show Created"

 redirect_to "/tv_shows/#{product.id}"

end 

def edit
  @product = Product.find_by(id: params[:id])
 
end 

def update
  product= Product.find_by(id: params[:id])
  product.name = params[:name]
  product.show_genre = params[:show_genre]
  product.image = params[:image]
  product.production_year = params[:production_year]
  product.production_film_company = params[:production_film_company]
  product.save

     flash[:success] = "TV Show Updated"
     redirect_to "/tv_shows/#{product.id}"
  end

def destroy
    product = Product.find_by(id: params[:id])
    product.delete
 flash[:warning] = "TV Show Deleted!"

     redirect_to "/tv_shows"
end 

 end 
