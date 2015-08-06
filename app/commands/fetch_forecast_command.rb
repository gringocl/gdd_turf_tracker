require 'forecast_io'

class FetchForecastCommand
  def initialize(latitude, longitude, requested_date = nil)
    @latitude = latitude
    @longitude = longitude
    @requested_date = requested_date
  end

  def perform
    options = { params: {exclude: 'currently,minutely,hourly,alerts,flags'} }
    if @requested_date
      options[:time] = @requested_date
    end

    ForecastIO.forecast(@latitude, @longitude, options)
  end


end
