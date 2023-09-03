# Assignment : 
# Build a class WeatherForecast that generates a random weather forecast for the day.

require 'colorize'

class WeatherForecast
  def generate_forecast
    weather_conditions = {
      "Sunny" => "27°C",
      "Cloudy" => "21°C",
      "Rainy" => "24°C",
      "Stormy" => "-20°C",
      "Windy" => "25°C"
    }
    weather_condition = weather_conditions.keys.sample
    temperature = weather_conditions[weather_condition]
    
    puts "Today's weather forecast: #{weather_condition}, #{temperature}".blue
  end
end

forecast = WeatherForecast.new
forecast.generate_forecast

