require 'rails_helper'
require 'forecast_io'

describe 'FetchForecastCommand' do
  let(:longitude) { 1 }
  let(:latitude) { 45 }
  let(:subject) { FetchForecastCommand.new(latitude, longitude) }

  it 'should use the provided long/lat in the request' do
    expect(ForecastIO).to receive(:forecast).with(latitude, longitude)
    subject.perform()
  end

  context 'when a date is provided' do
    it 'should use the date in the forecast request' do
      requested_date = 1.year.ago
      subject = FetchForecastCommand.new(latitude, longitude, requested_date)
      expect(ForecastIO).to receive(:forecast).with(latitude, longitude, { time: requested_date })
      subject.perform()
    end
  end
end
