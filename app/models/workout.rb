class Workout < ActiveRecord::Base
  has_many :user_workouts
  has_many :users, through: :user_workouts

  has_many :workout_exercises
  has_many :exercises, through: :workout_exercises

  def generate_workout(workout_type)
    #check that no workouts for this user have the workout_completed column as 0.
    #if its 0, return that same workout for the user to do, along with puts "You have not completed this workout!"
    #else, create a new workout.
    new_workout = Workout.new(goal: user.goal, workout_type: workout_type)
    #log the new workout in user_workouts.
  end

  def workout_done?
    puts "Have you finished this workout? Please enter y/n"
    user_input = gets.chomp
    if user_input.downcase == 'y'
      #change user_workouts.workout_completed for this particular workout to 1
    end
    calories_burnt #pass all the exercises done and find total calories.
  end





      # array.each do |i|
      # exercise = Exercise.all.find {|exercise| exercise.name == i}
      # if exercise == nil
      #   puts "Exercise does not exist"
      # WorkoutExercise.create(workout_id: self, exercise_id: exercise.id



  def calories_burnt(exercises_avg_cal)
    #takes the calories of each exercise and sums them and then returns that sum and adds it to the workout.
  end

end
