class FishingSpotsController < ApplicationController
  before_action :set_spot, only: :show

  def index
    @fishingspots = FishingSpot.all
    @markers = @fishingspots.geocoded.map do |fishingspot|
      {
        lat: fishingspot.latitude,
        lng: fishingspot.longitude
      }
    end 
  end
  def new
    @fishingspots = FishingSpot.new(fish_params)
    @fishingspot = FishingSpot.save(set_spot)

  end  

  def show
  end

  private

  def set_spot
    @fishingspot = FishingSpot.find(params[:id])
  end
  def fish_params
    params.require(:fishingspots).permit(:adresse, :fishing_activity, :longitude, :latitude)
  end
end

