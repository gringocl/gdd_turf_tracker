class WeatherInfosController < ApplicationController
  before_action :set_weather_info, only: [:show, :edit, :update, :destroy]

  # GET /weather_infos
  # GET /weather_infos.json
  def index
    @weather_infos = WeatherInfo.all
  end

  # GET /weather_infos/1
  # GET /weather_infos/1.json
  def show
  end

  # GET /weather_infos/new
  def new
    @weather_info = WeatherInfo.new
  end

  # GET /weather_infos/1/edit
  def edit
  end

  # POST /weather_infos
  # POST /weather_infos.json
  def create
    @weather_info = WeatherInfo.new(weather_info_params)

    respond_to do |format|
      if @weather_info.save
        format.html { redirect_to @weather_info, notice: 'Weather info was successfully created.' }
        format.json { render :show, status: :created, location: @weather_info }
      else
        format.html { render :new }
        format.json { render json: @weather_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /weather_infos/1
  # PATCH/PUT /weather_infos/1.json
  def update
    respond_to do |format|
      if @weather_info.update(weather_info_params)
        format.html { redirect_to @weather_info, notice: 'Weather info was successfully updated.' }
        format.json { render :show, status: :ok, location: @weather_info }
      else
        format.html { render :edit }
        format.json { render json: @weather_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /weather_infos/1
  # DELETE /weather_infos/1.json
  def destroy
    @weather_info.destroy
    respond_to do |format|
      format.html { redirect_to weather_infos_url, notice: 'Weather info was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_weather_info
      @weather_info = WeatherInfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def weather_info_params
      params.require(:weather_info).permit(:max_temp, :min_temp, :date, :base_temp)
    end
end
