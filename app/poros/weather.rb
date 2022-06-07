class Weather
  attr_reader :description
  def initialize(data)
    @description = data[:weather][0][:description]
  end
end
