class CreateWorkoutsTable < ActiveRecord::Migration[5.0]
  def change
    create_table :workouts do |t|
      t.string :goal
      t.string :workout_type
      t.integer :total_calories_burnt
    end
  end
end
