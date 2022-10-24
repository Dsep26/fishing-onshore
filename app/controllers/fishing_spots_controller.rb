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
    @fishingspots = FishingSpot.geocoded
    @marker = {
      lat: @fishingspot.latitude,
      lng: @fishingspot.longitude,
      image_url: helpers.asset_url("logo.png")
    }

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
    @winddirection = @location['current']['wind_dir']
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
end
