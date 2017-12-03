class Workout < ApplicationRecord
  validates :date, presence: true
  validates :description, presence: true
  validates :workout_type, inclusion: { in: ['Strength', 'Cardio'] }
end
