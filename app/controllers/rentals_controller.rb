class RentalsController < ApplicationController
    before_action :set_rental, only:[:show, :edit, :update, :destroy]
  
  def new
      @rental = Rental.new
      2.times {@rental.stations.build}
  end
  
  def create
      @rental = Rental.new(rental_params)
      respond_to do |format|
          if @rental.save
              format.html { redirect_to @rental, notice: 'Rent property was successfully created.' }
              format.json { render :show, status: :created, location: @rental }
              else
              format.html { render :new }
              format.json { render json: @rental.errors, status: :unprocessable_entity }
          end
      end
  end
  
  def index
      @rentals = Rental.all
  end
  
  def show
  end
  
  def edit
      @rental.stations.build
  end
  
  def update
      respond_to do |format|
          if @rental.update(rental_params)
              format.html { redirect_to @rental, notice: 'Rent property was successfully updated.' }
              format.json { render :show, status: :ok, location: @rental }
              else
              format.html { render :edit }
              format.json { render json: @rental.errors, status: :unprocessable_entity }
          end
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
