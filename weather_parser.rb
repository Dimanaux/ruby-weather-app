class WeatherParser
  attr_reader :json

  def initialize(params)
    @json = JSON.parse params
  end

  def result
    [temp, wind, weather].join(', ')
  end

  def weather
    @json['weather'][0]['description']
  end

  def wind
    "Wind #{@json['wind']['spped']} m/s"
  end

  def temp
    "Temperature #{@json['main']['temp']} deg C"
  end
end

