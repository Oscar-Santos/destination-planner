class WeatherFacade
  def self.get_current_weather(search)
    WeatherService.get_destination_weather(search)
  end
end
