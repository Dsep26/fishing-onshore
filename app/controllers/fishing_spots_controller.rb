class FishingSpotsController < ApplicationController
  before_action :set_spot, only: :show

  def index
    @spots = FishingSpot.all
  end

  def show
  end

  private

  def set_spot
    @spot = FishingSpot.find[params :id]
  end
end

