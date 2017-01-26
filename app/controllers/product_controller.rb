class ProdutsController < ApplicationController

  def index 
    @shows =Show.all 
  
  render "index.html.erb"

  end 

   def show 
    @shows = Show.find_by(id: params[:id])

    end 

    def new 

    end 

   def create
   name = params[:name]
   show_genre = params[:show_genre]
   image = params[:image]
   production_year = params[:production_year]
   production_film_company = params[:production_film_company]

   show = Show.new({name: name, show_genre: show_genre, image: image, production_year: production_year, production_film_company: production_film_company})

  movie5.save 
  flash[:success] = "TV Show Created"

 redirect_to "/shows/#{show.id}"

end 

def edit
  @shows = Show.find_by(id: params[:id])
  flash[:success] = "TV Show Edited"
end 

def update
  show = Show.find_by(id: params[:id])
  show.name = params[:name]
  show.show_genre = params[:show_genre]
  show.image = params[:image]
  show.production_year = params[:production_year]
  show.production_film_company = params[:production_film_company]
  show.save

     flash[:success] = "TV Show Updated"
     redirect_to "/shows/#{show.id}"
  end

def destroy
    @shows = Show.find_by(id: params[:id])
    @shows.delete
 flash[:warning] = "TV Show Deleted!"

     redirect_to "/shows"
end 

 end 
