class RentalsController < ApplicationController
    before_action :set_rental, only:[:show, :edit, :update, :destroy]
  
  def new
      @rental = Rental.new
  end
  
  def create
      @blog = Rental.create(rental_params)
      if @blog.save
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
      params.require(:rental).permit(:property, :rent, :address, :age, :remarks, :route_a, :station_a, :minutes_a, :route_b, :station_b, :minutes_b)
  end
  
  def set_rental
      @rental = Rental.find(params[:id])
  end
  
end
