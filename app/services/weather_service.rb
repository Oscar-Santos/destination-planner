class WeatherService
  def self.get_geocodes(city)
  end_point = '/geo/1.0/direct'
  #'/data/2.5/weather'
    response = connection.get(end_point) do |faraday|
      faraday.params['appid'] = ENV['open_weather_api_key']
      faraday.params['q'] = city
    end
     x = JSON.parse(response.body, symbolize_names: true)
     latitute = x[0][:lat]
     longitude = x[0][:lon]

     get_destination_weather(latitute, longitude)
  end

  def self.get_destination_weather(lat, lon)
    end_point = '/data/2.5/weather'
    response = connection.get(end_point) do |faraday|
      faraday.params['appid'] = ENV['open_weather_api_key']
      faraday.params['lat'] = lat
      faraday.params['lon'] = lon
    end
    JSON.parse(response.body, symbolize_names: true)  
  end

  def self.connection
    url = 'https://api.openweathermap.org'
    Faraday.new(url: url)
  end
end
