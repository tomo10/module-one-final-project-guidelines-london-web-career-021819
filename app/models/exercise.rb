class Exercise < ActiveRecord::Base
  has_many :workout_exercises
  has_many :workouts, through: :workout_exercises

  #MAIN MENU 7
    def self.display_upper_body
        upper_body_exercises = Exercise.all.select {|exercise| exercise.exercise_type == "Upper body"}
        upper_body_exercises.each do |upper_body_exercise|
          puts upper_body_exercise.name
          puts upper_body_exercise.description
        end
    end

  #MAIN MENU 8
    def self.display_lower_body
        lower_body_exercises = Exercise.all.select {|exercise| exercise.exercise_type == "Lower body"}
        lower_body_exercises.each do |lower_body_exercise|
          puts lower_body_exercise.name
          puts lower_body_exercise.description
        end
    end

  #MAIN MENU 9
    def self.display_cardio
        cardio_exercises = Exercise.all.select {|exercise| exercise.exercise_type == "Cardio"}
        cardio_exercises.each do |cardio_exercise|
          puts cardio_exercise.name
          puts cardio_exercise.description

        end
    end


end
