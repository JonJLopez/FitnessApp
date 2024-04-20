# app/controllers/weights_controller.rb
class WeightsController < ApplicationController
    def create
      @weight = Weight.new(weight_params)
      
      if @weight.save
        render json: @weight, status: :created
      else
        render json: @weight.errors, status: :unprocessable_entity
      end
    end
    
    private
    
    def weight_params
      params.require(:weight).permit(:email, :exercise, :reps, :weight, :set)
    end
  end
  