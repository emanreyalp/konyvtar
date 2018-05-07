class LocationsController < ApplicationController
  before_action :current_location, only: %i[edit show]

  def index
    @locations = Location.all
  end

  def edit; end

  def show; end

  def update
    update_location! Location.find(params[:id])

    redirect_to locations_path
  end

  def create
    update_location! Location.new

    redirect_to locations_path
  end

  private

  def update_location!(location)
    location.name = params[:name]
    location.is_active = params[:is_active] == 'on'
    location.save!
  end
end
