user_1 = User.create(username: "Mariam", password: "test", age: 28, weight: 60, gender: "Female", goal: "Weight loss")
user_2 = User.create(username: "Thomas", password: "test", age: 29, weight: 80, gender: "Male", goal: "Muscle gain")
user_3 = User.create(username: "Charly", password: "test", age: 28, weight: 55, gender: "Female", goal: "Endurance")
workout_1 = Workout.create(goal: "Weight loss", workout_type: "Upper body", total_calories_burnt: 300)
workout_2 = Workout.create(goal: "Muscle gain", workout_type: "Upper body", total_calories_burnt: 350)
workout_3 = Workout.create(goal: "Endurance", workout_type: "Upper body", total_calories_burnt: 120)
workout_4 = Workout.create(goal: "Weight loss", workout_type: "Lower body", total_calories_burnt: 350)
workout_5 = Workout.create(goal: "Muscle gain", workout_type: "Lower body", total_calories_burnt: 200)
workout_6 = Workout.create(goal: "Endurance", workout_type: "Lower body", total_calories_burnt: 400)
workout_7 = Workout.create(goal: "Weight loss", workout_type: "Cardio", total_calories_burnt: 600)
workout_8 = Workout.create(goal: "Muscle gain", workout_type: "Cardio", total_calories_burnt: 500)
workout_9 = Workout.create(goal: "Endurance", workout_type: "Cardio", total_calories_burnt: 350)
​exercise_1 = Exercise.create(name: "Squat", description: "Lower body movement", goal: "Muscle gain", exercise_type: "Lower body", sets: 3, reps: 12, avg_calories_burnt: 50)
exercise_2 = Exercise.create(name: "Treadmill", description: "Cardio exercise", goal: "Endurance", exercise_type: "Cardio", sets: 1, reps: 20 , avg_calories_burnt: 200)
exercise_3 = Exercise.create(name: "Sit-up", description: "Upper body movement", goal: "Muscle gain", exercise_type: "Upper body", sets: 3, reps: 15, avg_calories_burnt: 40)
​uw1 = UserWorkout.create(user_id: 1, workout_id: 1, workout_completed: 0)
uw2 = UserWorkout.create(user_id: 2, workout_id: 1, workout_completed: 0)
uw3 = UserWorkout.create(user_id: 3, workout_id: 1, workout_completed: 0)
uw4 = UserWorkout.create(user_id: 1, workout_id: 2, workout_completed: 0)
uw5 = UserWorkout.create(user_id: 2, workout_id: 2, workout_completed: 0)
uw6 = UserWorkout.create(user_id: 3, workout_id: 2, workout_completed: 0)
uw7 = UserWorkout.create(user_id: 1, workout_id: 3, workout_completed: 0)
uw8 = UserWorkout.create(user_id: 2, workout_id: 3, workout_completed: 0)
uw9 = UserWorkout.create(user_id: 3, workout_id: 3, workout_completed: 0)
​we1 = WorkoutExercise.create(exercise_id: 1, workout_id: 1)
we2 = WorkoutExercise.create(exercise_id: 2, workout_id: 1)
we3 = WorkoutExercise.create(exercise_id: 3, workout_id: 1)
we4 = WorkoutExercise.create(exercise_id: 1, workout_id: 2)
we5 = WorkoutExercise.create(exercise_id: 2, workout_id: 2)
we6 = WorkoutExercise.create(exercise_id: 3, workout_id: 2)
we7 = WorkoutExercise.create(exercise_id: 1, workout_id: 3)
we8 = WorkoutExercise.create(exercise_id: 2, workout_id: 3)
we9 = WorkoutExercise.create(exercise_id: 3, workout_id: 3)
