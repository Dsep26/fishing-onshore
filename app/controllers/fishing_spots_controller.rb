class FishingSpotsController < ApplicationController
  before_action :set_spot, only: :show

  def index
    @fishingspots = FishingSpot.all

  end

  def new
    @fishingspots = FishingSpot.new(fish_params)
    @fishingspot = FishingSpot.save(set_spot)

  end

  def show
    @fishingspots = FishingSpot.geocoded
    @marker = @fishingspots.map do |fishingspot| { 
      lat: fishingspot.latitude,
      lng: fishingspot.longitude,
      image_url: helpers.asset_url("logo.png")
    }
    end
  end

  private

  def set_spot
    @fishingspot = FishingSpot.find(params[:id])
  end
  
  def fish_params
    params.require(:fishingspots).permit(:address, :fishing_activity, :longitude, :latitude)
  end
end
