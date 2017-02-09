class SuppliersController < ApplicationController

   def index
     @suppliers = Supplier.all
    end

  def show
   @supplier = Supplier.find_by(id: params[:id])
  end
end
