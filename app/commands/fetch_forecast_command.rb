require 'forecast_io'

class FetchForecastCommand
  def initialize(latitude, longitude, requested_date = nil)
    @latitude = latitude
    @longitude = longitude
    @requested_date = requested_date
  end

  def perform
    if @requested_date
      ForecastIO.forecast(@latitude, @longitude, {time: @requested_date})
    else
      ForecastIO.forecast(@latitude, @longitude)
    end
  end
end
