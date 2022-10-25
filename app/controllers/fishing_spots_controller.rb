require "json"
require "open-uri"

class FishingSpotsController < ApplicationController
  before_action :set_spot, only: [:show, :photo]

  def index
    @fishingspots = FishingSpot.order(fishing_activity: :desc)
  end

  def new
    @fishingspots = FishingSpot.new(fish_params)
    @fishingspot = FishingSpot.save(set_spot)
  end

  def show
    # @fishingspots = FishingSpot.geocoded
    @marker = [{
      lat: @fishingspot.latitude,
      lng: @fishingspot.longitude,
      image_url: helpers.asset_url("logo.png")
    }]

    @fishspot = set_spot
    @location = find_spot
    # Weather Condition
    @condition = @location['current']['condition']['text']
    # Weather Icon
    @icon = @location['current']['condition']['icon']
    # Temperature
    @temperature = @location['current']['temp_c']
    # Wind Speed
    @windspeed = @location['current']['wind_kph']
    # Wind Direction
    winddirection = @location['current']['wind_dir']
    @winddirection = display_direction_fullname(winddirection)
    # Humidity
    @humidity = @location['current']['humidity']
  end

  private

  def set_spot
    @fishingspot = FishingSpot.find(params[:id])
  end

  def fish_params
    params.require(:fishingspots).permit(:address, :fishing_activity, :longitude, :latitude, :photo)
  end

  def find_spot
    url = "https://api.weatherapi.com/v1/current.json?key=7f022012d2f24e53a3f100654221910&q=#{@fishspot.latitude},#{@fishspot.longitude}"
    location_serialized = URI.open(url).read
    location = JSON.parse(location_serialized)
  end

  def display_direction_fullname(direction)
    case direction
    when "N"
      "North"
    when "NNE"
      "North of North-East"
    when "NE"
      "North East"
    when "ENE"
      "East of North-East"
    when "E"
      "East"
    when "ESE"
      "East of South-East"
    when "SE"
      "South East"
    when "SSE"
      "South of South-East"
    when "S"
      "South"
    when "SSW"
      "South of South-West"
    when "SW"
      "South-West"
    when "WSW"
      "West of South-West"
    when "W"
      "West"
    when "WNW"
      "West of North-West"
    when "NW"
      "North-West"
    when "NNW"
      "North of North-West"
    else
      "Cannot Find Wind Direction"
    end
  end
end
