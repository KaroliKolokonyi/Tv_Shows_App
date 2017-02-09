class ProductsController < ApplicationController

  def index 
if session[:count] ==nil 
  session[:count] = 0
end 

session[:count] += 1
@visit_count = session[:count]

    
if params[:filter]
      @products = Product.all.order(price:params[:price])

    elsif params[:sort] == "discount"
      @products = Product.where("price < ?", 20)
    else
      @products = Product.all
    end

    render "products.html.erb"
  end


   def show 
    if params[:id] == "random"
      @product = Product.all.sample
     else
      @product = Product.find_by(id: params[:id])
     end
  end

    def new 
      unless current_user
      flash[:message] = "Only signed in users can create add Tv show!"
      
      redirect_to "/signup"
    end

    end 

   def create
   name = params[:name]
   show_genre = params[:show_genre]
   image = params[:image]
   production_year = params[:production_year]
   production_film_company = params[:production_film_company]
   description = params[:description]
   price = params[:price]

   product = Product.new({name: name, show_genre: show_genre, image: image, production_year: production_year, production_film_company: production_film_company, description: description, price: price, user_id: current_user.id})

   product.save 
  flash[:success] = "TV Show Created"

 redirect_to "/products/#{product.id}"

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
  product.description = params[:description]
  product.price = params[:price]
  product.save

     flash[:success] = "TV Show Updated"
     redirect_to "/products/#{product.id}"
  end

def destroy
    product = Product.find_by(id: params[:id])
    product.delete
 flash[:warning] = "TV Show Deleted!"

     redirect_to "/products"
end 

 end 
