class LocationsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_location, only: [:show, :edit, :update, :destroy]

  respond_to :html, :json
  def index
    @locations = current_user.locations
  end

  def new
    @location = Location.new
    respond_modal_with @location
  end

  def show
    respond_modal_with @location
  end

  def edit
    respond_modal_with @location
  end

  def create
    location = current_user.locations.build(location_params)

    if location.save
      redirect_to locations_path, notice: "Locations was successfully created."
    else
      render :new, errors: 'There was a problem'
    end
  end

  def update
      if @location.update(location_params)
      redirect_to locations_path, notice: 'Location was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @location.destroy
    respond_to do |format|
      format.html { redirect_to locations_url, notice: 'Location was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_location
      @location = Location.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def location_params
      params.require(:location).permit(:name, :zip_code, :user)
    end
end
