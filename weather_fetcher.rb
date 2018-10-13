require 'dotenv'

Dotenv.load

class WeatherFetcher
  def initialize(params)
    @params = {
      :units => params[:units] || 'metric',
      :q => params[:city],
      # :lang => params[:lang] || 'ru',
      :APPID => ENV['WEATHER_KEY']
    }

    @uri = URI("http://api.openweathermap.org/data/2.5/weather")
    @uri.query = URI.encode_www_form(@params)
  end

  def result
    Net::HTTP.get(@uri)
  end
end

