class CreateExercises < ActiveRecord::Migration[5.0]

    def change
      create_table :exercises do |t|
        t.string :name
        t.string :description
        t.string :experience_level
        t.integer :sets
        t.integer :repetitions
        t.integer :average_calories 

   end
  end
end
