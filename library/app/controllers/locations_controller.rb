class LocationsController < ApplicationController
  def index
    @locations = Location.all
  end

  def edit
    @location = Location.find(params[:id])
  end

  def show
    @location = Location.find(params[:id])
  end

  def update
    location = Location.find(params[:id])
    location.name = params[:name]
    location.is_active = params[:is_active] == 'on'
    location.save!

    redirect_to locations_path
  end

  def create
    location = Location.new
    location.name = params[:name]
    location.is_active = params[:is_active] == 'on'
    location.save!

    redirect_to locations_path
  end
end
