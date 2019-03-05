class Workout_Exercise < ActiveRecord::Base
  belongs_to :exercise
  belongs_to :workout


end
