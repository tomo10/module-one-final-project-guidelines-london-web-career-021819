class CreateExercisesTable < ActiveRecord::Migration[5.0]
  def change
    create_table :exercises do |t|
      t.string :name
      t.string :description
      t.string :goal
      t.string :exercise_type
      t.integer :sets
      t.integer :reps
      t.integer :avg_calories_burnt
    end
  end
end
