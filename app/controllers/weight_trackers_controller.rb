class WeightTrackersController < ApplicationController
  before_action :set_weight_tracker, only: %i[ show edit update destroy ]

  # GET /weight_trackers or /weight_trackers.json
  def index
    @weight_trackers = WeightTracker.all
  end

  # GET /weight_trackers/1 or /weight_trackers/1.json
  def show
  end

  # GET /weight_trackers/new
  def new
    @weight_tracker = WeightTracker.new
  end

  # GET /weight_trackers/1/edit
  def edit
  end

  # POST /weight_trackers or /weight_trackers.json
  def create
    @weight_tracker = WeightTracker.new(weight_tracker_params)
    if @weight_tracker.save
      render json: @weight_tracker, status: :created
    else
      render json: @weight_tracker.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /weight_trackers/1 or /weight_trackers/1.json
  def update
    respond_to do |format|
      if @weight_tracker.update(weight_tracker_params)
        format.html { redirect_to weight_tracker_url(@weight_tracker), notice: "Weight tracker was successfully updated." }
        format.json { render :show, status: :ok, location: @weight_tracker }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @weight_tracker.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /weight_trackers/1 or /weight_trackers/1.json
  def destroy
    @weight_tracker.destroy!

    respond_to do |format|
      format.html { redirect_to weight_trackers_url, notice: "Weight tracker was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_weight_tracker
      @weight_tracker = WeightTracker.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def weight_tracker_params
      params.require(:weight_tracker).permit(:exercise, :reps, :weight)
    end
end
