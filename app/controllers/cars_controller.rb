class CarsController < ApplicationController

  def index
    @cars = Car.all
  end

  def new
    @car = Car.new
  end

  def create
    Car.create(car_params)
    redirect_to '/'
  end

  def destroy
    car = Car.find(params[:id])
    car.destroy
    redirect_to root_path
  end

  def edit
    @car = Car.find(params[:id])
  end

  def update
    car = Car.find(params[:id])
    car.update(car_params)
    redirect_to root_path
  end

  def show
    redirect_to maintenances_path
  end

  private

    def car_params
      params.require(:car).permit(:car_model, :number, :total_mileage, :monthly_mileage, :image)
    end

end
