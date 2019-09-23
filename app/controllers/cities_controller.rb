class CitiesController < ApplicationController
  before_action :set_city!, only: [:show, :edit, :update,]

  def index
    @cities = City.all
  end

  def show
  end

  def new
    @city = City.new
  end

  def edit
  end

  def create
    @city = city.create(city_params)
      redirect_to city_path(@city)
  end

  def update
    @city.update(city_params)
    redirect_to city_path(@city)
  end

  def delete
    City.destroy(params[:id])
    redirect_to cities_path
  end

  private
  
  def city_params
    params.require(:city).permit(:name)
  end

  def set_city!
    @city = City.find(params[:id])
  end
end
end
