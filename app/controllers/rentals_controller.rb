class RentalsController < ApplicationController
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
      @rental = Rental.find(params[:id])
  end
  
  def edit
      @rental = Rental.find(params[:id])
  end
  
  def update
      @rental = Rental.find(params[:id])
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
end
