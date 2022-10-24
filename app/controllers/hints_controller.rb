class HintsController < ApplicationController
  # before_action :set_hint, only: [:index]

  def index
    @hints = Hint.all
  end

  private

  def set_hint
    @hints = Hint.find(params[:id])
  end

  def hint_params
    params.require(:hints).permit(:equipment, :description, :photo)
  end
end
