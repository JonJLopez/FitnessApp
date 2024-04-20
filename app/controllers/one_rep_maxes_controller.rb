class OneRepMaxesController < ApplicationController
  before_action :set_one_rep_max, only: %i[ show edit update destroy ]
  before_action :authenticate_user!
  # GET /one_rep_maxes or /one_rep_maxes.json
  def index
    @one_rep_maxes = current_user.one_rep_maxes
  end

  # GET /one_rep_maxes/1 or /one_rep_maxes/1.json
  def show
  end

  # GET /one_rep_maxes/new
  def new
    @one_rep_max = OneRepMax.new
  end

  # GET /one_rep_maxes/1/edit
  def edit
  end

  # POST /one_rep_maxes or /one_rep_maxes.json
  def create
    @one_rep_max = OneRepMax.new(one_rep_max_params)

    respond_to do |format|
      if @one_rep_max.save
        format.html { redirect_to one_rep_max_url(@one_rep_max), notice: "One rep max was successfully created." }
        format.json { render :show, status: :created, location: @one_rep_max }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @one_rep_max.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /one_rep_maxes/1 or /one_rep_maxes/1.json
  def update
    respond_to do |format|
      if @one_rep_max.update(one_rep_max_params)
        format.html { redirect_to one_rep_maxes_path, notice: "One rep max was successfully updated." }
        format.json { render :show, status: :ok, location: @one_rep_max }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @one_rep_max.errors, status: :unprocessable_entity }
      end
    end

  end


  # DELETE /one_rep_maxes/1 or /one_rep_maxes/1.json
  def destroy
    @one_rep_max.destroy!

    respond_to do |format|
      format.html { redirect_to one_rep_maxes_url, notice: "One rep max was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_one_rep_max
      @one_rep_max = OneRepMax.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def one_rep_max_params
      params.require(:one_rep_max).permit(:DeadliftMax, :ShoulderPressMax, :SquatMax, :ChestPressMax, :cardioMin, :cardioSec)
    end
end
