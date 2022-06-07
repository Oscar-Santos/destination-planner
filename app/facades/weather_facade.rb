class WeatherFacade
  def self.get_current_weather(search)
  weather_description = WeatherService.get_geocodes(search)

  Weather.new(weather_description)

  end
end
