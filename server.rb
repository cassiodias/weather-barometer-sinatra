require 'sinatra'
require 'barometer'

get '/weather_at/:city' do
  @city = params[:city]
  @weather = Barometer.new(@city).measure
  erb :show
end