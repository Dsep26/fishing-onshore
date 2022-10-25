class DiscussionsController < ApplicationController
  before_action :set_discussion, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  
  def index
    @fishing_spot = FishingSpot.find(params[:fishing_spot_id])
    @discussions = Discussion.all.order('created_at desc')
    @discussion = Discussion.new
  end

  def show
    @discussions = Discussion.all.order('created_at desc')
    @reply = Reply.new
  end

  
  def new
    @fishing_spot = FishingSpot.find(params[:fishing_spot_id])
    @discussion = current_user.discussions.build
  end

  
  def edit
  end

  
  def create
    @fishing_spot = FishingSpot.find(params[:fishing_spot_id])
    @discussion = Discussion.new(discussion_params)
    @discussion.fishing_spot_id = @fishing_spot.id
    @discussion.user = current_user
    respond_to do |format|
      if @discussion.save
        format.html { redirect_to @discussion, notice: 'Discussion was successfully created.' }
        format.json { render :show, status: :created, location: @discussion }
      else
        format.html { render :new }
        format.json { render json: @discussion.errors, status: :unprocessable_entity }
      end
    end 
  end

  
  def update
    respond_to do |format|
      if @discussion.update!(discussion_params)
        format.html { redirect_to @discussion, notice: 'Discussion was successfully updated.' }
        format.json { render :show, status: :ok, location: @discussion }
      else
        format.html { render :edit }
        format.json { render json: @discussion.errors, status: :unprocessable_entity }
      end
    end
  end

 
  def destroy
    @discussion.destroy
    respond_to do |format|
      format.html { redirect_to discussions_url, notice: 'Discussion was successfully destroyed.' }
      format.json { head :no_content }
    end 
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_discussion
      @discussion = Discussion.find(params[:id])
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def discussion_params
      params.require(:discussion).permit(:title, :content, :fishing_spot_id)
    end
end
