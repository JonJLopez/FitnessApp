# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

User.create(email: "jon@email.com", name: "Jon", password: "password", password_confirmation: "password")

OneRepMax.create(DeadliftMax: 100, ShoulderPressMax: 100, SquatMax: 100, ChestPressMax: 100, cardioMin: 10, cardioSec: 0, user_id: User.first.id)

(1..30).each do |i|
    WeightTracker.create(exercise: "deadlift", created_at: Time.now - i.days, updated_at: Time.now - i.days, reps: rand(1..10), weight: rand(10..100), user_id: User.first.id)
    WeightTracker.create(exercise: "shoulder press", created_at: Time.now - i.days, updated_at: Time.now - i.days, reps: rand(1..10), weight: rand(10..100), user_id: User.first.id)
    WeightTracker.create(exercise: "chest press", created_at: Time.now - i.days, updated_at: Time.now - i.days, reps: rand(1..10), weight: rand(10..100), user_id: User.first.id)
    WeightTracker.create(exercise: "squat", created_at: Time.now - i.days, updated_at: Time.now - i.days, reps: rand(1..10), weight: rand(10..100), user_id: User.first.id)
end
