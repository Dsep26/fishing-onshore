class FishingSpotsController < ApplicationController
  before_action :set_spot, only: :show

  def index
    @spots = FishingSpot.all
    @markers = @spots.geocoded.map do |flat|
      {
        lat: spot.latitude,
        lng: spot.longitude
      }
    end
  end

  def show
  end

  private

  def set_spot
    @spot = FishingSpot.find[params :id]
  end
end
