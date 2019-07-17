class RentalsController < ApplicationController
    before_action :set_rental, only:[:show, :edit, :update]
  
  def new
      @rental = Rental.new
  end
  
  def create
      Rental.create(rental_params)
      redirect_to new_rental_path
  end
  
  def index
      @rentals = Rental.all
  end
  
  def show
  end
  
  def edit
  end
  
  def update
      if @rental.update(rental_params)
          redirect_to rentals_path
      else
          render 'edit'
      end
  end
  
  private
  
  def rental_params
      params.require(:rental).permit(:property, :rent, :address, :age, :remarks, :route_a, :station_a, :minutes_a, :route_b, :station_b, :minutes_b)
  end
  
  def set_rental
      @rental = Rental.find(params[:id])
  end
  
end
