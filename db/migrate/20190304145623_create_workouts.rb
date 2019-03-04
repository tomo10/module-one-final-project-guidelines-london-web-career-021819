class CreateWorkouts < ActiveRecord::Migration[5.0]
  def change

    create_table :workouts do |t|
      t.string :experience_level
      t.string :day_of_week
      t.string :type
      t.integer :sum_of_calories_burnt

    end
  end
end
