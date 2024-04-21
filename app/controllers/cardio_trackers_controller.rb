class CardioTrackersController < ApplicationController
  before_action :set_cardio_tracker, only: %i[ show edit update destroy ]

  # GET /cardio_trackers or /cardio_trackers.json
  def index
    @cardio_trackers = CardioTracker.all
  end

  # GET /cardio_trackers/1 or /cardio_trackers/1.json
  def show
  end

  # GET /cardio_trackers/new
  def new
    @cardio_tracker = CardioTracker.new
  end

  # GET /cardio_trackers/1/edit
  def edit
  end

  def most_recent
    user_id = params[:id]
    most_recent_entry = CardioTracker.where(user_id: user_id).order(created_at: :desc).first
    
    if most_recent_entry
      render json: most_recent_entry
    else
      render json: { error: "Entry not found" }, status: :not_found
    end
  end

  # POST /cardio_trackers or /cardio_trackers.json
  def create
    @cardio_tracker = current_user.cardio_trackers.build(cardio_tracker_params)
    if @cardio_tracker.save
      render json: @cardio_tracker, status: :created
    else
      render json: @cardio_tracker.errors, status: :unprocessable_entity
    end
  end


  # PATCH/PUT /cardio_trackers/1 or /cardio_trackers/1.json
  def update
    respond_to do |format|
      if @cardio_tracker.update(cardio_tracker_params)
        format.html { redirect_to cardio_tracker_url(@cardio_tracker), notice: "Cardio tracker was successfully updated." }
        format.json { render :show, status: :ok, location: @cardio_tracker }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cardio_tracker.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cardio_trackers/1 or /cardio_trackers/1.json
  def destroy
    @cardio_tracker.destroy!

    respond_to do |format|
      format.html { redirect_to cardio_trackers_url, notice: "Cardio tracker was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cardio_tracker
      @cardio_tracker = CardioTracker.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cardio_tracker_params
      params.require(:cardio_tracker).permit(:miles, :minutes, :seconds, :user_id)
    end
end
