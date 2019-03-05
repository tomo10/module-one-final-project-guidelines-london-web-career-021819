class CreateUserWorkoutsTable < ActiveRecord::Migration[5.0]
  def change

    create_table :user_workouts do |t|
      t.integer :user_id
      t.integer :workout_id
      t.integer :workout_completed, null: false
      t.datetime :date_completed
    end
  end
end
