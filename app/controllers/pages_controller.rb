class PagesController < ApplicationController
  before_action :authenticate_user!, except:[:about]

  def home
  end

  def about
  end

  def trends
    @exercises = current_user.weight_trackers.pluck(:exercise).uniq
    @data = {}

    @exercises.each do |exercise|
      @data[exercise] = current_user.weight_trackers.where(exercise: exercise)
                                                    .order(created_at: :desc)
                                                    .limit(30)
                                                    .pluck(:created_at, :weight)
                                                    .to_h
    end

    Rails.logger.info("Data for @data: #{@data.inspect}")
  end

  def routine
    @one_rep_max = current_user.one_rep_maxes.last
    @deadlift1 = (@one_rep_max.DeadliftMax * 0.65 / 5.0).round * 5
    @deadlift2 = (@one_rep_max.DeadliftMax * 0.75 / 5.0).round * 5
    @deadlift3 = (@one_rep_max.DeadliftMax * 0.85 / 5.0).round * 5

    @shoulder1 = (@one_rep_max.ShoulderPressMax * 0.65 / 5.0).round * 5
    @shoulder2 = (@one_rep_max.ShoulderPressMax * 0.75 / 5.0).round * 5
    @shoulder3 = (@one_rep_max.ShoulderPressMax * 0.85 / 5.0).round * 5

    @squat1 = (@one_rep_max.SquatMax * 0.65 / 5.0).round * 5
    @squat2 = (@one_rep_max.SquatMax * 0.75 / 5.0).round * 5
    @squat3 = (@one_rep_max.SquatMax * 0.85 / 5.0).round * 5

    @chest1 = (@one_rep_max.ChestPressMax * 0.65 / 5.0).round * 5
    @chest2 = (@one_rep_max.ChestPressMax * 0.75 / 5.0).round * 5
    @chest3 = (@one_rep_max.ChestPressMax * 0.85 / 5.0).round * 5

    @seconds = (@one_rep_max.cardioMin * 60) + @one_rep_max.cardioSec

    @pace1 = (@seconds * 1.05).round
    @pace2 = (@seconds * 0.9).round
  end

  def routine2
    @one_rep_max = current_user.one_rep_maxes.first
    @seconds = (@one_rep_max.cardioMin * 60) + @one_rep_max.cardioSec
    @deadlift1 = (@one_rep_max.DeadliftMax * 0.70 / 5.0).round * 5
    @deadlift2 = (@one_rep_max.DeadliftMax * 0.80 / 5.0).round * 5
    @deadlift3 = (@one_rep_max.DeadliftMax * 0.90 / 5.0).round * 5

    @shoulder1 = (@one_rep_max.ShoulderPressMax * 0.70 / 5.0).round * 5
    @shoulder2 = (@one_rep_max.ShoulderPressMax * 0.80 / 5.0).round * 5
    @shoulder3 = (@one_rep_max.ShoulderPressMax * 0.90 / 5.0).round * 5

    @squat1 = (@one_rep_max.SquatMax * 0.70 / 5.0).round * 5
    @squat2 = (@one_rep_max.SquatMax * 0.80 / 5.0).round * 5
    @squat3 = (@one_rep_max.SquatMax * 0.90 / 5.0).round * 5

    @chest1 = (@one_rep_max.ChestPressMax * 0.70 / 5.0).round * 5
    @chest2 = (@one_rep_max.ChestPressMax * 0.80 / 5.0).round * 5
    @chest3 = (@one_rep_max.ChestPressMax * 0.90 / 5.0).round * 5

    @pace1 = (@seconds / 1.03).round
    @pace2 = (@seconds * 0.865).round
  end

  def routine3
    @one_rep_max = current_user.one_rep_maxes.first
    @seconds = (@one_rep_max.cardioMin * 60) + @one_rep_max.cardioSec
    @deadlift1 = (@one_rep_max.DeadliftMax * 0.75 / 5.0).round * 5
    @deadlift2 = (@one_rep_max.DeadliftMax * 0.85 / 5.0).round * 5
    @deadlift3 = (@one_rep_max.DeadliftMax * 0.95 / 5.0).round * 5

    @shoulder1 = (@one_rep_max.ShoulderPressMax * 0.75 / 5.0).round * 5
    @shoulder2 = (@one_rep_max.ShoulderPressMax * 0.80 / 5.0).round * 5
    @shoulder3 = (@one_rep_max.ShoulderPressMax * 0.95 / 5.0).round * 5

    @squat1 = (@one_rep_max.SquatMax * 0.75 / 5.0).round * 5
    @squat2 = (@one_rep_max.SquatMax * 0.80 / 5.0).round * 5
    @squat3 = (@one_rep_max.SquatMax * 0.95 / 5.0).round * 5

    @chest1 = (@one_rep_max.ChestPressMax * 0.75 / 5.0).round * 5
    @chest2 = (@one_rep_max.ChestPressMax * 0.80 / 5.0).round * 5
    @chest3 = (@one_rep_max.ChestPressMax * 0.95 / 5.0).round * 5

    @pace1 = (@seconds * 1.14).round
    @pace2 = (@seconds / 3.125).round
  end

  def routine4
    @one_rep_max = current_user.one_rep_maxes.first
    @seconds = (@one_rep_max.cardioMin * 60) + @one_rep_max.cardioSec
    @deadlift1 = (@one_rep_max.DeadliftMax * 0.40 / 5.0).round * 5
    @deadlift2 = (@one_rep_max.DeadliftMax * 0.50 / 5.0).round * 5
    @deadlift3 = (@one_rep_max.DeadliftMax * 0.60 / 5.0).round * 5

    @shoulder1 = (@one_rep_max.ShoulderPressMax * 0.40 / 5.0).round * 5
    @shoulder2 = (@one_rep_max.ShoulderPressMax * 0.50 / 5.0).round * 5
    @shoulder3 = (@one_rep_max.ShoulderPressMax * 0.60 / 5.0).round * 5

    @squat1 = (@one_rep_max.SquatMax * 0.40 / 5.0).round * 5
    @squat2 = (@one_rep_max.SquatMax * 0.50 / 5.0).round * 5
    @squat3 = (@one_rep_max.SquatMax * 0.60 / 5.0).round * 5

    @chest1 = (@one_rep_max.ChestPressMax * 0.40 / 5.0).round * 5
    @chest2 = (@one_rep_max.ChestPressMax * 0.50 / 5.0).round * 5
    @chest3 = (@one_rep_max.ChestPressMax * 0.60 / 5.0).round * 5

    @pace1 = (@seconds / 3.125).round
  end
end
