class RentalsController < ApplicationController
    before_action :set_rental, only:[:show, :edit, :update, :destroy]
  
  def new
      @rental = Rental.new
      2.times {@rental.stations.build}
  end
  
  def create
      @rental = Rental.new(rental_params)
      if @rental.save
          redirect_to rentals_path, notice: "登録しました"
      else
          render 'new'
      end
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
          redirect_to rentals_path, notice:"編集しました"
      else
          render 'edit'
      end
  end
  
  def destroy
      @rental.destroy
      redirect_to rentals_path, notice:"削除しました"
  end
  
  private
  
  def rental_params
      params.require(:rental).permit(:property, :rent, :address, :age, :remarks,stations_attributes: [:id, :_destroy, :rental_id, :route_name, :station_name, :walking_minutes])
  end
  
  def set_rental
      @rental = Rental.find(params[:id])
  end
  
end
