class PagesController < ApplicationController
before_action :authenticate_user!, except:[:about]

  def home
  end

  def about
  end

  def routine
    @one_rep_max = OneRepMax.first
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
  end

  def routine2
    @one_rep_max = OneRepMax.first
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
  end

  def routine3
    @one_rep_max = OneRepMax.first
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
  end

  def routine4
    @one_rep_max = OneRepMax.first
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
  end
end
