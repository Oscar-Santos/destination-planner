class WeatherService
  def self.get_destination_weather(search)
  end_point = '/data/2.5/weather'
    response = connection.get(end_point) do |faraday|
      faraday.params['appid'] = ENV['open_weather_api_key']
    end
    x = JSON.parse(response.body, symbolize_names: true)
    require "pry"; binding.pry
  end

  def self.connection
    url = 'https://api.openweathermap.org'
    Faraday.new(url: url)
  end
end
